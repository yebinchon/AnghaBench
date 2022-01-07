
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef scalar_t__ thread_state_t ;
typedef int thread_flavor_t ;
struct arm_thread_state {int sp; int * r; int pc; int cpsr; int lr; } ;
struct arm_saved_state {int * r; int cpsr; int pc; int lr; int sp; } ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_2__ {struct arm_saved_state* cpu_int_state; } ;



 int ARM_THREAD_STATE_COUNT ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ current_thread () ;
 TYPE_1__* getCpuDatap () ;
 int machine_thread_get_kern_state_kprintf (char*,int ,int ,int ) ;

kern_return_t
machine_thread_get_kern_state(
         thread_t thread,
         thread_flavor_t flavor,
         thread_state_t tstate,
         mach_msg_type_number_t * count)
{
 if (thread != current_thread() || getCpuDatap()->cpu_int_state == ((void*)0))
  return KERN_FAILURE;

 switch (flavor) {
 case 128:{
   struct arm_thread_state *state;
   struct arm_saved_state *saved_state;
   unsigned int i;
   if (*count < ARM_THREAD_STATE_COUNT)
    return (KERN_INVALID_ARGUMENT);

   state = (struct arm_thread_state *) tstate;
   saved_state = getCpuDatap()->cpu_int_state;

   state->sp = saved_state->sp;
   state->lr = saved_state->lr;
   state->pc = saved_state->pc;
   state->cpsr = saved_state->cpsr;
   for (i = 0; i < 13; i++)
    state->r[i] = saved_state->r[i];

                                        ;
   *count = ARM_THREAD_STATE_COUNT;
   break;
  }
 default:
  return (KERN_INVALID_ARGUMENT);
 }
 return (KERN_SUCCESS);
}
