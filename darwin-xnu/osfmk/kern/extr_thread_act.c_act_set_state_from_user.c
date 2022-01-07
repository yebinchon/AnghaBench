
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef int thread_state_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ current_thread () ;
 int thread_set_state_from_user (scalar_t__,int,int ,int ) ;

kern_return_t
act_set_state_from_user(
 thread_t thread,
 int flavor,
 thread_state_t state,
 mach_msg_type_number_t count)
{
    if (thread == current_thread())
     return (KERN_INVALID_ARGUMENT);

    return (thread_set_state_from_user(thread, flavor, state, count));

}
