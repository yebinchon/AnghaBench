
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kpc_config_remote {int classes; int pmc_mask; int * configv; } ;


 int EINVAL ;
 int EPERM ;
 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_FIXED_MASK ;
 int KPC_CLASS_POWER_MASK ;
 int assert (int *) ;
 int kpc_config_lock ;
 int kpc_controls_fixed_counters () ;
 int kpc_get_configurable_pmc_mask (int) ;
 int kpc_set_period_arch (struct kpc_config_remote*) ;
 int kprintf (char*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

int
kpc_set_period(uint32_t classes, uint64_t *val)
{
 struct kpc_config_remote mp_config = {
  .classes = classes, .configv = val,
  .pmc_mask = kpc_get_configurable_pmc_mask(classes)
 };

 assert(val);


 if ((classes & (KPC_CLASS_CONFIGURABLE_MASK)) &&
     (classes & (KPC_CLASS_POWER_MASK)))
 {
  return EPERM;
 }

 lck_mtx_lock(&kpc_config_lock);







 if (classes & KPC_CLASS_FIXED_MASK) {
  lck_mtx_unlock(&kpc_config_lock);
  return EINVAL;
 }



 if (classes & KPC_CLASS_POWER_MASK)
  mp_config.classes |= KPC_CLASS_CONFIGURABLE_MASK;

 kprintf("setting period %u\n", classes);
 kpc_set_period_arch( &mp_config );

 lck_mtx_unlock(&kpc_config_lock);

 return 0;
}
