
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int force_all_ctrs ;
 scalar_t__ kpc_configurable_count () ;
 int kpc_controls_fixed_counters () ;
 scalar_t__ kpc_fixed_count () ;
 scalar_t__ kpc_pm_has_custom_config ;
 int kpc_pm_pmc_mask ;

boolean_t
kpc_controls_counter(uint32_t ctr)
{
 uint64_t pmc_mask = 0ULL;

 assert(ctr < (kpc_fixed_count() + kpc_configurable_count()));

 if (ctr < kpc_fixed_count())
  return kpc_controls_fixed_counters();







 pmc_mask = (1ULL << (ctr - kpc_fixed_count()));
 if ((pmc_mask & kpc_pm_pmc_mask) && kpc_pm_has_custom_config && !force_all_ctrs)
  return FALSE;

 return TRUE;
}
