
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* thread_t ;
typedef int* thread_state_t ;
typedef int thread_flavor_t ;
struct arm_vfpsaved_state {int * r; int fpscr; } ;
struct arm_vfp_state {int * r; int fpscr; } ;
struct arm_thread_state {int sp; int * r; int pc; int cpsr; int lr; } ;
struct arm_saved_state {int far; int fsr; int exception; int * r; int cpsr; int pc; int lr; int sp; } ;
struct arm_exception_state {int far; int fsr; int exception; } ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_8__ {int count; int flavor; } ;
struct TYPE_11__ {TYPE_1__ ash; struct arm_thread_state ts_32; } ;
typedef TYPE_4__ arm_unified_thread_state_t ;
typedef int arm_debug_state_t ;
struct TYPE_9__ {struct arm_saved_state PcbData; } ;
struct TYPE_10__ {TYPE_2__ machine; } ;



 int ARM_DEBUG_STATE_COUNT ;

 int ARM_EXCEPTION_STATE_COUNT ;

 int ARM_THREAD_STATE32 ;
 int ARM_THREAD_STATE32_COUNT ;
 int ARM_THREAD_STATE_COUNT ;
 int ARM_UNIFIED_THREAD_STATE_COUNT ;
 int ARM_VFPV2_STATE_COUNT ;

 int ARM_VFP_STATE_COUNT ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;

 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;
 int * find_debug_state (TYPE_3__*) ;
 struct arm_vfpsaved_state* find_user_vfp (TYPE_3__*) ;
 int machine_thread_get_state_kprintf (char*,int ,int ,int ) ;

kern_return_t
machine_thread_get_state(
    thread_t thread,
    thread_flavor_t flavor,
    thread_state_t tstate,
    mach_msg_type_number_t * count)
{




 switch (flavor) {
 case 128:
  if (*count < 4)
   return (KERN_INVALID_ARGUMENT);

  tstate[0] = 130;
  tstate[1] = 129;
  tstate[2] = 131;
  tstate[3] = 132;
  *count = 4;
  break;

 case 130:{
   struct arm_thread_state *state;
   struct arm_saved_state *saved_state;
   arm_unified_thread_state_t *unified_state;

   unsigned int i;
   if (*count < ARM_THREAD_STATE_COUNT)
    return (KERN_INVALID_ARGUMENT);

   if (*count == ARM_UNIFIED_THREAD_STATE_COUNT) {
    unified_state = (arm_unified_thread_state_t *) tstate;
    state = &unified_state->ts_32;
    unified_state->ash.flavor = ARM_THREAD_STATE32;
    unified_state->ash.count = ARM_THREAD_STATE32_COUNT;
   } else {
    state = (struct arm_thread_state *) tstate;
   }
   saved_state = &thread->machine.PcbData;

   state->sp = saved_state->sp;
   state->lr = saved_state->lr;
   state->pc = saved_state->pc;
   state->cpsr = saved_state->cpsr;
   for (i = 0; i < 13; i++)
    state->r[i] = saved_state->r[i];

                                        ;

   if (*count != ARM_UNIFIED_THREAD_STATE_COUNT) {
    *count = ARM_THREAD_STATE_COUNT;
   }
   break;
  }
 case 131:{
   struct arm_exception_state *state;
   struct arm_saved_state *saved_state;

   if (*count < ARM_EXCEPTION_STATE_COUNT)
    return (KERN_INVALID_ARGUMENT);

   state = (struct arm_exception_state *) tstate;
   saved_state = &thread->machine.PcbData;

   state->exception = saved_state->exception;
   state->fsr = saved_state->fsr;
   state->far = saved_state->far;

   *count = ARM_EXCEPTION_STATE_COUNT;
   break;
  }
 case 129:{
   break;
  }
 case 132:{
   arm_debug_state_t *state;
   arm_debug_state_t *thread_state;

                        if (*count < ARM_DEBUG_STATE_COUNT)
    return (KERN_INVALID_ARGUMENT);

                        state = (arm_debug_state_t *) tstate;
                        thread_state = find_debug_state(thread);

                        if (thread_state == ((void*)0))
    bzero(state, sizeof(arm_debug_state_t));
                        else
    bcopy(thread_state, state, sizeof(arm_debug_state_t));

                        *count = ARM_DEBUG_STATE_COUNT;
                        break;
  }

 default:
  return (KERN_INVALID_ARGUMENT);
 }
 return (KERN_SUCCESS);
}
