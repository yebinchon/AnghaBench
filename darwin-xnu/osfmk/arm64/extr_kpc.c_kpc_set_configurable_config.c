
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;
typedef int kpc_config_t ;
typedef int boolean_t ;


 int FALSE ;
 int assert (int *) ;
 unsigned long long kpc_configurable_count () ;
 int * kpc_controls_counter (unsigned long long) ;
 unsigned long long kpc_fixed_count () ;
 int ml_set_interrupts_enabled (int ) ;
 int set_counter_config (unsigned long long,int ) ;

__attribute__((used)) static int
kpc_set_configurable_config(kpc_config_t *configv, uint64_t pmc_mask)
{
 uint32_t cfg_count = kpc_configurable_count(), offset = kpc_fixed_count();
 boolean_t enabled;

 assert(configv);

 enabled = ml_set_interrupts_enabled(FALSE);

 for (uint32_t i = 0; i < cfg_count; ++i) {
  if (((1ULL << i) & pmc_mask) == 0)
   continue;
  assert(kpc_controls_counter(i + offset));

  set_counter_config(i + offset, *configv++);
 }

 ml_set_interrupts_enabled(enabled);

 return 0;
}
