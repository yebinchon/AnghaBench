
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int KPC_CLASS_CONFIGURABLE_MASK ;
 int assert (int) ;
 scalar_t__ kpc_configurable_count () ;
 scalar_t__ kpc_popcount (int) ;
 int kpc_running_cfg_pmc_mask ;
 int kpc_running_classes ;

boolean_t
kpc_is_running_configurable(uint64_t pmc_mask)
{
 assert(kpc_popcount(pmc_mask) <= kpc_configurable_count());
 return ((kpc_running_classes & KPC_CLASS_CONFIGURABLE_MASK) == KPC_CLASS_CONFIGURABLE_MASK) &&
        ((kpc_running_cfg_pmc_mask & pmc_mask) == pmc_mask);
}
