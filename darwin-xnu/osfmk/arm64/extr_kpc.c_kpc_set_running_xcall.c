
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_running_remote {int cfg_state_mask; int cfg_target_mask; } ;
typedef int event_t ;


 int assert (struct kpc_running_remote*) ;
 scalar_t__ hw_atomic_sub (int *,int) ;
 int kpc_xcall_sync ;
 int set_running_configurable (int ,int ) ;
 int thread_wakeup (int ) ;

__attribute__((used)) static void
kpc_set_running_xcall( void *vstate )
{
 struct kpc_running_remote *mp_config = (struct kpc_running_remote*) vstate;
 assert(mp_config);

 set_running_configurable(mp_config->cfg_target_mask,
     mp_config->cfg_state_mask);

 if (hw_atomic_sub(&kpc_xcall_sync, 1) == 0)
  thread_wakeup((event_t) &kpc_xcall_sync);
}
