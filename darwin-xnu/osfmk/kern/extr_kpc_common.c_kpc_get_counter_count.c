
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_FIXED_MASK ;
 int KPC_CLASS_POWER_MASK ;
 scalar_t__ kpc_fixed_count () ;
 int kpc_get_configurable_pmc_mask (int) ;
 int kpc_popcount (int ) ;

uint32_t
kpc_get_counter_count(uint32_t classes)
{
 uint32_t count = 0;

 if (classes & KPC_CLASS_FIXED_MASK)
  count += kpc_fixed_count();

 if (classes & (KPC_CLASS_CONFIGURABLE_MASK | KPC_CLASS_POWER_MASK)) {
  uint64_t pmc_msk = kpc_get_configurable_pmc_mask(classes);
  uint32_t pmc_cnt = kpc_popcount(pmc_msk);
  count += pmc_cnt;
 }

 return count;
}
