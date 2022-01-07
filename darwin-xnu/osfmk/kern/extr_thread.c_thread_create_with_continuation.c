
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef int task_t ;
typedef int kern_return_t ;


 int FALSE ;
 int thread_create_internal2 (int ,int *,int ,int ) ;

kern_return_t
thread_create_with_continuation(
 task_t task,
 thread_t *new_thread,
 thread_continue_t continuation)
{
 return thread_create_internal2(task, new_thread, FALSE, continuation);
}
