
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_state_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int FALSE ;
 int thread_get_state_internal (int ,int,int ,int *,int ) ;

kern_return_t
thread_get_state(
 thread_t thread,
 int flavor,
 thread_state_t state,
 mach_msg_type_number_t *state_count)
{
 return thread_get_state_internal(thread, flavor, state, state_count, FALSE);
}
