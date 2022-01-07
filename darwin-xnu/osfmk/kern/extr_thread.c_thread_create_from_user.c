
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef int task_t ;
typedef int kern_return_t ;


 int TRUE ;
 scalar_t__ thread_bootstrap_return ;
 int thread_create_internal2 (int ,int *,int ,int ) ;

kern_return_t
thread_create_from_user(
 task_t task,
 thread_t *new_thread)
{
 return thread_create_internal2(task, new_thread, TRUE, (thread_continue_t)thread_bootstrap_return);
}
