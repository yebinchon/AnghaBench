
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ thread_state_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_6__ {int count; int flavor; } ;
struct TYPE_7__ {TYPE_1__ ash; } ;
typedef TYPE_2__ arm_unified_thread_state_t ;
typedef int arm_saved_state_t ;


 int ARM_THREAD_STATE32 ;
 int ARM_THREAD_STATE32_COUNT ;
 int ARM_THREAD_STATE64 ;
 int ARM_THREAD_STATE64_COUNT ;
 scalar_t__ ARM_UNIFIED_THREAD_STATE_COUNT ;
 int KERN_SUCCESS ;
 int bzero (TYPE_2__*,int) ;
 int handle_get_arm32_thread_state (scalar_t__,scalar_t__*,int const*) ;
 scalar_t__ is_saved_state64 (int const*) ;
 int saved_state_to_thread_state32 (int const*,int ) ;
 int saved_state_to_thread_state64 (int const*,int ) ;
 int thread_state32 (TYPE_2__*) ;
 int thread_state64 (TYPE_2__*) ;

kern_return_t
handle_get_arm_thread_state(
    thread_state_t tstate,
    mach_msg_type_number_t * count,
    const arm_saved_state_t *saved_state)
{





 if (*count < ARM_UNIFIED_THREAD_STATE_COUNT) {
  return handle_get_arm32_thread_state(tstate, count, saved_state);
 }

 arm_unified_thread_state_t *unified_state = (arm_unified_thread_state_t *) tstate;
 bzero(unified_state, sizeof(*unified_state));







 {
  unified_state->ash.flavor = ARM_THREAD_STATE32;
  unified_state->ash.count = ARM_THREAD_STATE32_COUNT;
  (void)saved_state_to_thread_state32(saved_state, thread_state32(unified_state));
 }
 *count = ARM_UNIFIED_THREAD_STATE_COUNT;
 return (KERN_SUCCESS);
}
