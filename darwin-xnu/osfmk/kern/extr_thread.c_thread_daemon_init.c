
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * thread_t ;
typedef int thread_continue_t ;
typedef scalar_t__ kern_return_t ;


 int BASEPRI_PREEMPT_HIGH ;
 scalar_t__ KERN_SUCCESS ;
 int MINPRI_KERNEL ;
 int crashed_threads_queue ;
 scalar_t__ kernel_thread_start_priority (int ,int *,int ,int **) ;
 int panic (char*) ;
 int queue_init (int *) ;
 int simple_lock_init (int *,int ) ;
 int thread_deallocate (int *) ;
 int thread_deallocate_queue ;
 scalar_t__ thread_exception_daemon ;
 int thread_exception_lock ;
 int thread_exception_queue ;
 scalar_t__ thread_stack_daemon ;
 int thread_stack_lock ;
 int thread_stack_queue ;
 scalar_t__ thread_terminate_daemon ;
 int thread_terminate_lock ;
 int thread_terminate_queue ;
 int turnstile_deallocate_queue ;
 int workq_deallocate_queue ;

void
thread_daemon_init(void)
{
 kern_return_t result;
 thread_t thread = ((void*)0);

 simple_lock_init(&thread_terminate_lock, 0);
 queue_init(&thread_terminate_queue);
 queue_init(&thread_deallocate_queue);
 queue_init(&workq_deallocate_queue);
 queue_init(&turnstile_deallocate_queue);
 queue_init(&crashed_threads_queue);

 result = kernel_thread_start_priority((thread_continue_t)thread_terminate_daemon, ((void*)0), MINPRI_KERNEL, &thread);
 if (result != KERN_SUCCESS)
  panic("thread_daemon_init: thread_terminate_daemon");

 thread_deallocate(thread);

 simple_lock_init(&thread_stack_lock, 0);
 queue_init(&thread_stack_queue);

 result = kernel_thread_start_priority((thread_continue_t)thread_stack_daemon, ((void*)0), BASEPRI_PREEMPT_HIGH, &thread);
 if (result != KERN_SUCCESS)
  panic("thread_daemon_init: thread_stack_daemon");

 thread_deallocate(thread);

 simple_lock_init(&thread_exception_lock, 0);
 queue_init(&thread_exception_queue);

 result = kernel_thread_start_priority((thread_continue_t)thread_exception_daemon, ((void*)0), MINPRI_KERNEL, &thread);
 if (result != KERN_SUCCESS)
  panic("thread_daemon_init: thread_exception_daemon");

 thread_deallocate(thread);
}
