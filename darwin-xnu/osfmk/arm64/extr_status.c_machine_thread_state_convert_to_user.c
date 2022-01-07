
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_state_t ;
typedef int thread_flavor_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;

kern_return_t
machine_thread_state_convert_to_user(
    thread_t thread,
    thread_flavor_t flavor,
    thread_state_t tstate,
    mach_msg_type_number_t *count)
{

 (void)thread; (void)flavor; (void)tstate; (void)count;
 return KERN_SUCCESS;
}
