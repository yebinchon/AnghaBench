
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_config_remote {int dummy; } ;


 int ASYNC ;
 int CPUMASK_ALL ;
 int kpc_set_config_mp_call ;
 int mp_cpus_call (int ,int ,int ,struct kpc_config_remote*) ;

int
kpc_set_config_arch(struct kpc_config_remote *mp_config)
{
 mp_cpus_call( CPUMASK_ALL, ASYNC, kpc_set_config_mp_call, mp_config );

 return 0;
}
