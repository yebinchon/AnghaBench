
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned long long uint32_t ;
typedef int * kpc_pm_handler_t ;
typedef int boolean_t ;


 int FALSE ;
 int KPC_CLASS_CONFIGURABLE_MASK ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ force_all_ctrs ;
 unsigned long long kpc_configurable_count () ;
 unsigned long long kpc_get_counter_count (int ) ;
 int * kpc_pm_handler ;
 int kpc_pm_has_custom_config ;
 int kpc_pm_pmc_mask ;
 unsigned long long kpc_popcount (int) ;
 int printf (char*,int,int ) ;

boolean_t
kpc_reserve_pm_counters(uint64_t pmc_mask, kpc_pm_handler_t handler,
                        boolean_t custom_config)
{
 uint64_t all_mask = (1ULL << kpc_configurable_count()) - 1;
 uint64_t req_mask = 0ULL;


 assert(handler != ((void*)0));
 assert(kpc_pm_handler == ((void*)0));


 req_mask = (pmc_mask & all_mask);
 assert(kpc_popcount(req_mask) <= kpc_configurable_count());


 kpc_pm_has_custom_config = custom_config;
 kpc_pm_pmc_mask = req_mask;
 kpc_pm_handler = handler;

 printf("kpc: pm registered pmc_mask=%llx custom_config=%d\n",
        req_mask, custom_config);


 {
  uint32_t cfg_count = kpc_get_counter_count(KPC_CLASS_CONFIGURABLE_MASK);
  uint32_t pwr_count = kpc_popcount(kpc_pm_pmc_mask);
#pragma unused(cfg_count, pwr_count)
 assert((cfg_count + pwr_count) == kpc_configurable_count());
 }

 return force_all_ctrs ? FALSE : TRUE;
}
