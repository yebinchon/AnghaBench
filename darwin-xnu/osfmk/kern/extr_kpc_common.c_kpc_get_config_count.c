
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_FIXED_MASK ;
 int KPC_CLASS_POWER_MASK ;
 int KPC_CLASS_RAWPMU_MASK ;
 scalar_t__ kpc_configurable_config_count (int ) ;
 scalar_t__ kpc_fixed_config_count () ;
 int kpc_get_configurable_pmc_mask (int) ;
 int kpc_multiple_clients () ;
 scalar_t__ kpc_rawpmu_config_count () ;

uint32_t
kpc_get_config_count(uint32_t classes)
{
 uint32_t count = 0;

 if (classes & KPC_CLASS_FIXED_MASK)
  count += kpc_fixed_config_count();

 if (classes & (KPC_CLASS_CONFIGURABLE_MASK | KPC_CLASS_POWER_MASK)) {
  uint64_t pmc_mask = kpc_get_configurable_pmc_mask(classes);
  count += kpc_configurable_config_count(pmc_mask);
 }

 if ((classes & KPC_CLASS_RAWPMU_MASK) && !kpc_multiple_clients())
  count += kpc_rawpmu_config_count();

 return count;
}
