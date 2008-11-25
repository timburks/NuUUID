#import <Foundation/Foundation.h>
#import <Nu/Nu.h>
#include "uuid/uuid.h"

@interface NuUUID : NSObject
{
   uuid_t uu;
}
@end

@implementation NuUUID 

- (NuUUID *) init {
   [super init];
   uuid_generate(uu);
   return self;
}

- (NSString *) stringValue {
   char value[37];
   uuid_unparse(uu, value);
   return [NSString stringWithCString:value encoding:NSUTF8StringEncoding];
}
@end