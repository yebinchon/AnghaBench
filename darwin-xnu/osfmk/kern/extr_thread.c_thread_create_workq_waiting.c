
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef int task_t ;
typedef int kern_return_t ;


 int TH_OPTION_NOCRED ;
 int TH_OPTION_NOSUSP ;
 int TH_OPTION_WORKQ ;
 int kThreadWaitParkedWorkQueue ;
 int thread_create_waiting_internal (int ,int ,int *,int ,int,int *) ;

kern_return_t
thread_create_workq_waiting(
 task_t task,
 thread_continue_t continuation,
 thread_t *new_thread)
{
 int options = TH_OPTION_NOCRED | TH_OPTION_NOSUSP | TH_OPTION_WORKQ;
 return thread_create_waiting_internal(task, continuation, ((void*)0),
   kThreadWaitParkedWorkQueue, options, new_thread);
}
