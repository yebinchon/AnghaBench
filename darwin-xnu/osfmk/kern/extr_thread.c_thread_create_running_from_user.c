
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_state_t ;
typedef int task_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int TRUE ;
 int thread_create_running_internal2 (int ,int,int ,int ,int *,int ) ;

kern_return_t
thread_create_running_from_user(
 task_t task,
 int flavor,
 thread_state_t new_state,
 mach_msg_type_number_t new_state_count,
 thread_t *new_thread)
{
 return thread_create_running_internal2(
  task, flavor, new_state, new_state_count,
  new_thread, TRUE);
}
