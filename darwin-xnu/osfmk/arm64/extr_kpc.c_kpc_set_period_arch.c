
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_config_remote {int dummy; } ;


 int TRUE ;
 int assert (struct kpc_config_remote*) ;
 int cpu_broadcast_xcall (int *,int ,int ,struct kpc_config_remote*) ;
 int kpc_configured ;
 int kpc_reload_sync ;
 int kpc_set_reload_xcall ;

int
kpc_set_period_arch(struct kpc_config_remote *mp_config)
{
 assert(mp_config);


 cpu_broadcast_xcall(&kpc_reload_sync, TRUE, kpc_set_reload_xcall, mp_config);

 kpc_configured = 1;

 return 0;
}
