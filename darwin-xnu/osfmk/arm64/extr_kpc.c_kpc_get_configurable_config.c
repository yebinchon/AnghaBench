
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;
typedef int kpc_config_t ;


 int assert (int *) ;
 int get_counter_config (unsigned long long) ;
 unsigned long long kpc_configurable_count () ;
 unsigned long long kpc_fixed_count () ;

int
kpc_get_configurable_config(kpc_config_t *configv, uint64_t pmc_mask)
{
 uint32_t cfg_count = kpc_configurable_count(), offset = kpc_fixed_count();

 assert(configv);

 for (uint32_t i = 0; i < cfg_count; ++i)
  if ((1ULL << i) & pmc_mask)
   *configv++ = get_counter_config(i + offset);
 return 0;
}
