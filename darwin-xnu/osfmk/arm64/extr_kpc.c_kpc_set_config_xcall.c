
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kpc_config_remote {int classes; int pmc_mask; struct kpc_config_remote* configv; } ;
typedef struct kpc_config_remote kpc_config_t ;
typedef int event_t ;


 int KPC_CLASS_CONFIGURABLE_MASK ;
 int KPC_CLASS_RAWPMU_MASK ;
 scalar_t__ RAWPMU_CONFIG_COUNT ;
 int assert (struct kpc_config_remote*) ;
 scalar_t__ hw_atomic_sub (int *,int) ;
 int kpc_config_sync ;
 int kpc_popcount (int ) ;
 int kpc_set_configurable_config (struct kpc_config_remote*,int ) ;
 int kpc_set_rawpmu_config (struct kpc_config_remote*) ;
 int thread_wakeup (int ) ;

__attribute__((used)) static void
kpc_set_config_xcall(void *vmp_config)
{
 struct kpc_config_remote *mp_config = vmp_config;
 kpc_config_t *new_config = ((void*)0);
 uint32_t classes = 0ULL;

 assert(mp_config);
 assert(mp_config->configv);
 classes = mp_config->classes;
 new_config = mp_config->configv;

 if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
  kpc_set_configurable_config(new_config, mp_config->pmc_mask);
  new_config += kpc_popcount(mp_config->pmc_mask);
 }

 if (classes & KPC_CLASS_RAWPMU_MASK) {
  kpc_set_rawpmu_config(new_config);
  new_config += RAWPMU_CONFIG_COUNT;
 }

 if (hw_atomic_sub(&kpc_config_sync, 1) == 0)
  thread_wakeup((event_t) &kpc_config_sync);
}
