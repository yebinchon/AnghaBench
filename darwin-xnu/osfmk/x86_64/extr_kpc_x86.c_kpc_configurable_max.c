
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long kpc_configurable_width () ;

uint64_t
kpc_configurable_max(void)
{
 return (1ULL << kpc_configurable_width()) - 1;
}
