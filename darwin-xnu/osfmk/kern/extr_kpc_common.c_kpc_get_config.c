
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int kpc_config_t ;


 int EPERM ;
 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_FIXED_MASK ;
 int KPC_CLASS_POWER_MASK ;
 int KPC_CLASS_RAWPMU_MASK ;
 int assert (int *) ;
 scalar_t__ kpc_get_config_count (int) ;
 int kpc_get_configurable_config (int *,int ) ;
 int kpc_get_configurable_pmc_mask (int) ;
 int kpc_get_fixed_config (int *) ;
 int kpc_get_rawpmu_config (int *) ;
 scalar_t__ kpc_multiple_clients () ;

int
kpc_get_config(uint32_t classes, kpc_config_t *current_config)
{
 uint32_t count = 0;

 assert(current_config);

 if (classes & KPC_CLASS_FIXED_MASK) {
  kpc_get_fixed_config(&current_config[count]);
  count += kpc_get_config_count(KPC_CLASS_FIXED_MASK);
 }

 if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
  uint64_t pmc_mask = kpc_get_configurable_pmc_mask(KPC_CLASS_CONFIGURABLE_MASK);
  kpc_get_configurable_config(&current_config[count], pmc_mask);
  count += kpc_get_config_count(KPC_CLASS_CONFIGURABLE_MASK);
 }

 if (classes & KPC_CLASS_POWER_MASK) {
  uint64_t pmc_mask = kpc_get_configurable_pmc_mask(KPC_CLASS_POWER_MASK);
  kpc_get_configurable_config(&current_config[count], pmc_mask);
  count += kpc_get_config_count(KPC_CLASS_POWER_MASK);
 }

 if (classes & KPC_CLASS_RAWPMU_MASK)
 {



  if( kpc_multiple_clients() )
  {
   return EPERM;
  }
  kpc_get_rawpmu_config(&current_config[count]);
  count += kpc_get_config_count(KPC_CLASS_RAWPMU_MASK);
 }

 return 0;
}
