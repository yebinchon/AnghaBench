
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int KPC_CLASS_CONFIGURABLE_MASK ;
 int assert (int) ;
 scalar_t__ kpc_configurable_count () ;
 scalar_t__ kpc_get_counter_count (int ) ;
 int * kpc_pm_handler ;
 int kpc_pm_has_custom_config ;
 unsigned long long kpc_pm_pmc_mask ;
 int printf (char*) ;

void
kpc_release_pm_counters(void)
{

 assert(kpc_pm_handler != ((void*)0));


 kpc_pm_has_custom_config = FALSE;
 kpc_pm_pmc_mask = 0ULL;
 kpc_pm_handler = ((void*)0);

 printf("kpc: pm released counters\n");


 assert(kpc_get_counter_count(KPC_CLASS_CONFIGURABLE_MASK) == kpc_configurable_count());
}
