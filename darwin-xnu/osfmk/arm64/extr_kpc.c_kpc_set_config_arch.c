
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct kpc_config_remote {struct kpc_config_remote* configv; int pmc_mask; } ;


 int EPERM ;
 int TRUE ;
 int assert (struct kpc_config_remote*) ;
 int config_in_whitelist (struct kpc_config_remote) ;
 int cpu_broadcast_xcall (int *,int ,int ,struct kpc_config_remote*) ;
 int kpc_config_sync ;
 int kpc_configured ;
 size_t kpc_popcount (int ) ;
 int kpc_set_config_xcall ;
 int whitelist_disabled ;

int
kpc_set_config_arch(struct kpc_config_remote *mp_config)
{
 uint32_t count = kpc_popcount(mp_config->pmc_mask);

 assert(mp_config);
 assert(mp_config->configv);


 for (uint32_t i = 0; i < count; ++i) {
  if (!whitelist_disabled && !config_in_whitelist(mp_config->configv[i])) {
   return EPERM;
  }
 }


 cpu_broadcast_xcall(&kpc_config_sync, TRUE, kpc_set_config_xcall, mp_config);

 kpc_configured = 1;

 return 0;
}
