
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_running_remote {int classes; int cfg_state_mask; } ;


 int TRUE ;
 int assert (int ) ;
 int cpu_broadcast_xcall (int *,int ,int ,struct kpc_running_remote*) ;
 int kpc_configured ;
 int kpc_running_cfg_pmc_mask ;
 int kpc_running_classes ;
 int kpc_set_running_xcall ;
 int kpc_xcall_sync ;

int
kpc_set_running_arch(struct kpc_running_remote *mp_config)
{
 assert(mp_config != ((void*)0));


 cpu_broadcast_xcall(&kpc_xcall_sync, TRUE, kpc_set_running_xcall, mp_config);

 kpc_running_cfg_pmc_mask = mp_config->cfg_state_mask;
 kpc_running_classes = mp_config->classes;
 kpc_configured = 1;

 return 0;
}
