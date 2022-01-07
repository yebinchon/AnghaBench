
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kpc_config_remote {int classes; int pmc_mask; int * configv; } ;
typedef int kpc_config_t ;


 int EPERM ;
 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_POWER_MASK ;
 int KPC_CLASS_RAWPMU_MASK ;
 int assert (int *) ;
 int kpc_config_lock ;
 int kpc_get_configurable_pmc_mask (int) ;
 scalar_t__ kpc_multiple_clients () ;
 int kpc_set_config_arch (struct kpc_config_remote*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

int
kpc_set_config(uint32_t classes, kpc_config_t *configv)
{
 int ret = 0;
 struct kpc_config_remote mp_config = {
  .classes = classes, .configv = configv,
  .pmc_mask = kpc_get_configurable_pmc_mask(classes)
 };

 assert(configv);


 if ((classes & KPC_CLASS_RAWPMU_MASK) && kpc_multiple_clients()) {
  return EPERM;
 }


 if ((classes & (KPC_CLASS_CONFIGURABLE_MASK)) &&
     (classes & (KPC_CLASS_POWER_MASK)))
 {
  return EPERM;
 }

 lck_mtx_lock(&kpc_config_lock);


 if (classes & KPC_CLASS_POWER_MASK)
  mp_config.classes |= KPC_CLASS_CONFIGURABLE_MASK;

 ret = kpc_set_config_arch( &mp_config );

 lck_mtx_unlock(&kpc_config_lock);

 return ret;
}
