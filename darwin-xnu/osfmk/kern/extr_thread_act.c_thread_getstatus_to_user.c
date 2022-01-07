
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_state_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int thread_get_state_to_user (int ,int,int ,int *) ;

kern_return_t
thread_getstatus_to_user(
 thread_t thread,
 int flavor,
 thread_state_t tstate,
 mach_msg_type_number_t *count)
{
 return (thread_get_state_to_user(thread, flavor, tstate, count));
}
