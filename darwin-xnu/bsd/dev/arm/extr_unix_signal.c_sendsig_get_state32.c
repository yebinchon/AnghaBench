
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_t ;
typedef int thread_state_t ;
struct TYPE_3__ {int fs; int es; int ss; } ;
typedef TYPE_1__ mcontext32_t ;
typedef int mach_msg_type_number_t ;
typedef int arm_thread_state_t ;


 int ARM_EXCEPTION_STATE ;
 int ARM_EXCEPTION_STATE_COUNT ;
 int ARM_THREAD_STATE ;
 int ARM_THREAD_STATE_COUNT ;
 int ARM_VFP_STATE ;
 int ARM_VFP_STATE_COUNT ;
 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 int current_proc () ;
 scalar_t__ machine_thread_state_convert_to_user (int ,int ,int ,int *) ;
 int proc_is64bit_data (int ) ;
 scalar_t__ thread_getstatus (int ,int ,int ,int *) ;
 scalar_t__ thread_getstatus_to_user (int ,int ,int ,int *) ;

__attribute__((used)) static int
sendsig_get_state32(thread_t th_act, arm_thread_state_t *ts, mcontext32_t *mcp)
{
 void *tstate;
 mach_msg_type_number_t state_count;

 assert(!proc_is64bit_data(current_proc()));

 tstate = (void *) ts;
 state_count = ARM_THREAD_STATE_COUNT;
 if (thread_getstatus(th_act, ARM_THREAD_STATE, (thread_state_t) tstate, &state_count) != KERN_SUCCESS)
  return EINVAL;

 mcp->ss = *ts;
 tstate = (void *) &mcp->ss;
 state_count = ARM_THREAD_STATE_COUNT;
 if (machine_thread_state_convert_to_user(th_act, ARM_THREAD_STATE, (thread_state_t) tstate, &state_count) != KERN_SUCCESS)
  return EINVAL;

 tstate = (void *) &mcp->es;
 state_count = ARM_EXCEPTION_STATE_COUNT;
 if (thread_getstatus(th_act, ARM_EXCEPTION_STATE, (thread_state_t) tstate, &state_count) != KERN_SUCCESS)
  return EINVAL;

 tstate = (void *) &mcp->fs;
 state_count = ARM_VFP_STATE_COUNT;
 if (thread_getstatus_to_user(th_act, ARM_VFP_STATE, (thread_state_t) tstate, &state_count) != KERN_SUCCESS)
  return EINVAL;

 return 0;
}
