
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_state_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int arm_thread_state64_t ;
typedef int arm_saved_state_t ;


 scalar_t__ ARM_THREAD_STATE64_COUNT ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int is_saved_state64 (int const*) ;
 int saved_state_to_thread_state64 (int const*,int *) ;

kern_return_t
handle_get_arm64_thread_state(
    thread_state_t tstate,
    mach_msg_type_number_t * count,
    const arm_saved_state_t *saved_state)
{
 if (*count < ARM_THREAD_STATE64_COUNT)
  return (KERN_INVALID_ARGUMENT);
 if (!is_saved_state64(saved_state))
  return (KERN_INVALID_ARGUMENT);

 (void)saved_state_to_thread_state64(saved_state, (arm_thread_state64_t *)tstate);
 *count = ARM_THREAD_STATE64_COUNT;
 return KERN_SUCCESS;
}
