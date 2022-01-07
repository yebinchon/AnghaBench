
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long kpc_fixed_width () ;

uint64_t
kpc_fixed_max(void)
{
 return (1ULL << kpc_fixed_width()) - 1;
}
