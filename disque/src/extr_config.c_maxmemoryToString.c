
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxmemory; } ;


 char const* configEnumGetNameOrUnknown (int ,int ) ;
 int maxmemory_policy_enum ;
 TYPE_1__ server ;

const char *maxmemoryToString(void) {
    return configEnumGetNameOrUnknown(maxmemory_policy_enum,server.maxmemory);
}
