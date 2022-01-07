
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int cpuid_cpufamily; } ;


 TYPE_1__* cpuid_info () ;

uint32_t
cpuid_cpufamily(void)
{
 return cpuid_info()->cpuid_cpufamily;
}
