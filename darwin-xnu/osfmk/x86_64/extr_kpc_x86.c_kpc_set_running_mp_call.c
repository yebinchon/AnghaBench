
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_running_remote {int classes; int cfg_state_mask; int cfg_target_mask; } ;


 int KPC_CLASS_FIXED_MASK ;
 int assert (struct kpc_running_remote*) ;
 scalar_t__ kpc_controls_fixed_counters () ;
 int set_running_configurable (int ,int ) ;
 int set_running_fixed (int) ;

__attribute__((used)) static void
kpc_set_running_mp_call( void *vstate )
{
 struct kpc_running_remote *mp_config = (struct kpc_running_remote*) vstate;
 assert(mp_config);

 if (kpc_controls_fixed_counters())
  set_running_fixed(mp_config->classes & KPC_CLASS_FIXED_MASK);

 set_running_configurable(mp_config->cfg_target_mask,
     mp_config->cfg_state_mask);
}
