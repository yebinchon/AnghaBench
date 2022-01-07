
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_state_t ;
struct arm_act_context {int vfps; int ss; } ;
typedef scalar_t__ kern_return_t ;


 int ARM_THREAD_STATE ;
 int ARM_THREAD_STATE_COUNT ;
 int ARM_VFP_STATE ;
 int ARM_VFP_STATE_COUNT ;
 scalar_t__ KERN_SUCCESS ;
 int current_thread () ;
 int kfree (struct arm_act_context*,int) ;
 scalar_t__ machine_thread_set_state (int ,int ,int ,int ) ;

void
act_thread_catt(void *ctx)
{
 struct arm_act_context *ic;
 kern_return_t kret;

 ic = (struct arm_act_context *) ctx;

 if (ic == (struct arm_act_context *) ((void*)0))
  return;

 kret = machine_thread_set_state(current_thread(),
     ARM_THREAD_STATE,
     (thread_state_t) & ic->ss,
     ARM_THREAD_STATE_COUNT);
 if (kret != KERN_SUCCESS)
  goto out;
out:
 kfree(ic, sizeof(struct arm_act_context));
}
