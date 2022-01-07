
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_state_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int arm_unified_thread_state_t ;
typedef int arm_saved_state_t ;


 scalar_t__ ARM_UNIFIED_THREAD_STATE_COUNT ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int const_thread_state32 (int const*) ;
 int const_thread_state64 (int const*) ;
 int handle_set_arm32_thread_state (scalar_t__ const,scalar_t__,int *) ;
 int is_saved_state32 (int *) ;
 int is_saved_state64 (int *) ;
 scalar_t__ is_thread_state64 (int const*) ;
 int thread_state32_to_saved_state (int ,int *) ;
 int thread_state64_to_saved_state (int ,int *) ;

kern_return_t
handle_set_arm_thread_state(
    const thread_state_t tstate,
    mach_msg_type_number_t count,
    arm_saved_state_t *saved_state)
{





 if (count < ARM_UNIFIED_THREAD_STATE_COUNT) {
  if (!is_saved_state32(saved_state)) {
   return (KERN_INVALID_ARGUMENT);
  }
  return handle_set_arm32_thread_state(tstate, count, saved_state);
 }

 const arm_unified_thread_state_t *unified_state = (const arm_unified_thread_state_t *) tstate;
 {
  if (!is_saved_state32(saved_state)) {
   return (KERN_INVALID_ARGUMENT);
  }
  (void)thread_state32_to_saved_state(const_thread_state32(unified_state), saved_state);
 }

 return (KERN_SUCCESS);
}
