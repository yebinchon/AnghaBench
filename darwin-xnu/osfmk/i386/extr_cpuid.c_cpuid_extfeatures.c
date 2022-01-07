
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int cpuid_extfeatures; } ;


 TYPE_1__* cpuid_info () ;

uint64_t
cpuid_extfeatures(void)
{
 return cpuid_info()->cpuid_extfeatures;
}
