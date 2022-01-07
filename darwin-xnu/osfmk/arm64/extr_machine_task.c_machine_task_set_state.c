
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

 int ads_zone ;
 int copy_debug_state32 (int *,int *,int ) ;
 int copy_debug_state64 (int *,int *,int ) ;
 int copy_legacy_debug_state (int *,int *,int ) ;
 int debug_legacy_state_is_valid (int *) ;
 int debug_state_is_valid32 (int *) ;
 int debug_state_is_valid64 (int *) ;
 int task_has_64Bit_data (TYPE_1__*) ;
 void* zalloc (int ) ;
 int zfree (int ,int *) ;

kern_return_t
machine_task_set_state(
  task_t task,
  int flavor,
  thread_state_t state,
  mach_msg_type_number_t state_count)
{
 switch (flavor) {
 case 131:
 {
  arm_legacy_debug_state_t *tstate = (arm_legacy_debug_state_t *) state;
  if (task_has_64Bit_data(task) ||
    (state_count != ARM_LEGACY_DEBUG_STATE_COUNT) ||
    (!debug_legacy_state_is_valid(tstate))) {
   return KERN_INVALID_ARGUMENT;
  }

  if (task->task_debug == ((void*)0)) {
   task->task_debug = zalloc(ads_zone);
   if (task->task_debug == ((void*)0))
    return KERN_FAILURE;
  }

  copy_legacy_debug_state(tstate, (arm_legacy_debug_state_t *) task->task_debug, FALSE);

  return KERN_SUCCESS;
 }
 case 130:
 {
  arm_debug_state32_t *tstate = (arm_debug_state32_t *) state;
  if (task_has_64Bit_data(task) ||
    (state_count != ARM_DEBUG_STATE32_COUNT) ||
    (!debug_state_is_valid32(tstate))) {
   return KERN_INVALID_ARGUMENT;
  }

  if (task->task_debug == ((void*)0)) {
   task->task_debug = zalloc(ads_zone);
   if (task->task_debug == ((void*)0))
    return KERN_FAILURE;
  }

  copy_debug_state32(tstate, (arm_debug_state32_t *) task->task_debug, FALSE);

  return KERN_SUCCESS;
 }
 case 129:
 {
  arm_debug_state64_t *tstate = (arm_debug_state64_t *) state;

  if ((!task_has_64Bit_data(task)) ||
    (state_count != ARM_DEBUG_STATE64_COUNT) ||
    (!debug_state_is_valid64(tstate))) {
   return KERN_INVALID_ARGUMENT;
  }

  if (task->task_debug == ((void*)0)) {
   task->task_debug = zalloc(ads_zone);
   if (task->task_debug == ((void*)0))
    return KERN_FAILURE;
  }

  copy_debug_state64(tstate, (arm_debug_state64_t *) task->task_debug, FALSE);

  return KERN_SUCCESS;
 }
 case 128:
 {
  if (task->task_debug != ((void*)0)) {
   zfree(ads_zone, task->task_debug);
   task->task_debug = ((void*)0);

   return KERN_SUCCESS;
  }
  return KERN_FAILURE;
 }
 default:
   {
  return KERN_INVALID_ARGUMENT;
   }
 }

 return KERN_FAILURE;
}
