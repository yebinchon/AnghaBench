
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;
typedef int kpc_config_t ;


 int IA32_PERFEVTSELx (unsigned long long) ;
 int assert (int *) ;
 unsigned long long kpc_configurable_count () ;

int
kpc_get_configurable_config(kpc_config_t *configv, uint64_t pmc_mask)
{
 uint32_t cfg_count = kpc_configurable_count();

 assert(configv);

 for (uint32_t i = 0; i < cfg_count; ++i)
  if ((1ULL << i) & pmc_mask)
   *configv++ = IA32_PERFEVTSELx(i);
 return 0;
}
