
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long KPC_ARM64_COUNTER_WIDTH ;

uint64_t
kpc_configurable_max(void)
{
 return (1ULL << KPC_ARM64_COUNTER_WIDTH) - 1;
}
