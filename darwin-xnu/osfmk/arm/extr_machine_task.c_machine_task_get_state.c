
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_state_t ;
typedef TYPE_1__* task_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int arm_debug_state_t ;
struct TYPE_3__ {int * task_debug; } ;



 int ARM_DEBUG_STATE_COUNT ;
 int FALSE ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int bzero (scalar_t__,int) ;
 int copy_debug_state (int *,int *,int ) ;

kern_return_t
machine_task_get_state(task_t task,
  int flavor,
  thread_state_t state,
  mach_msg_type_number_t *state_count)
{
 switch (flavor) {
 case 128:
 {
  arm_debug_state_t *tstate = (arm_debug_state_t *) state;

  if (*state_count != ARM_DEBUG_STATE_COUNT) {
   return KERN_INVALID_ARGUMENT;
  }

  if (task->task_debug == ((void*)0)) {
   bzero(state, sizeof(*tstate));
  } else {
   copy_debug_state((arm_debug_state_t*) task->task_debug, tstate, FALSE);
  }

  return KERN_SUCCESS;
 }
 default:
   {
  return KERN_INVALID_ARGUMENT;
   }

 }
 return KERN_FAILURE;
}
