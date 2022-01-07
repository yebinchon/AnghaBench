
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_running_remote {int classes; int cfg_state_mask; } ;


 int ASYNC ;
 int CPUMASK_ALL ;
 int assert (struct kpc_running_remote*) ;
 int kpc_running_cfg_pmc_mask ;
 int kpc_running_classes ;
 int kpc_set_running_mp_call ;
 int mp_cpus_call (int ,int ,int ,struct kpc_running_remote*) ;

int
kpc_set_running_arch(struct kpc_running_remote *mp_config)
{
 assert(mp_config);


 mp_cpus_call(CPUMASK_ALL, ASYNC, kpc_set_running_mp_call, mp_config);

 kpc_running_cfg_pmc_mask = mp_config->cfg_state_mask;
 kpc_running_classes = mp_config->classes;

 return 0;
}
