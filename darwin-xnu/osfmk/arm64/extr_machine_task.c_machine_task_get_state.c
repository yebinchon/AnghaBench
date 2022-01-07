
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ thread_state_t ;
typedef TYPE_1__* task_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int arm_legacy_debug_state_t ;
typedef int arm_debug_state64_t ;
typedef int arm_debug_state32_t ;
struct TYPE_4__ {int * task_debug; } ;




 int ARM_DEBUG_STATE32_COUNT ;

 int ARM_DEBUG_STATE64_COUNT ;
 int ARM_LEGACY_DEBUG_STATE_COUNT ;
 int FALSE ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int bzero (scalar_t__,int) ;
 int copy_debug_state32 (int *,int *,int ) ;
 int copy_debug_state64 (int *,int *,int ) ;
 int copy_legacy_debug_state (int *,int *,int ) ;
 int task_has_64Bit_data (TYPE_1__*) ;

kern_return_t
machine_task_get_state(task_t task,
  int flavor,
  thread_state_t state,
  mach_msg_type_number_t *state_count)
{
 switch (flavor) {
 case 130:
 {
  arm_legacy_debug_state_t *tstate = (arm_legacy_debug_state_t *) state;

  if (task_has_64Bit_data(task) || (*state_count != ARM_LEGACY_DEBUG_STATE_COUNT)) {
   return KERN_INVALID_ARGUMENT;
  }

  if (task->task_debug == ((void*)0)) {
   bzero(state, sizeof(*tstate));
  } else {
   copy_legacy_debug_state((arm_legacy_debug_state_t*) task->task_debug, tstate, FALSE);
  }

  return KERN_SUCCESS;
 }
 case 129:
 {
  arm_debug_state32_t *tstate = (arm_debug_state32_t *) state;

  if (task_has_64Bit_data(task) || (*state_count != ARM_DEBUG_STATE32_COUNT)) {
   return KERN_INVALID_ARGUMENT;
  }

  if (task->task_debug == ((void*)0)) {
   bzero(state, sizeof(*tstate));
  } else {
   copy_debug_state32((arm_debug_state32_t*) task->task_debug, tstate, FALSE);
  }

  return KERN_SUCCESS;
 }
 case 128:
 {
  arm_debug_state64_t *tstate = (arm_debug_state64_t *) state;

  if ((!task_has_64Bit_data(task)) || (*state_count != ARM_DEBUG_STATE64_COUNT)) {
   return KERN_INVALID_ARGUMENT;
  }

  if (task->task_debug == ((void*)0)) {
   bzero(state, sizeof(*tstate));
  } else {
   copy_debug_state64((arm_debug_state64_t*) task->task_debug, tstate, FALSE);
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
