
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef scalar_t__ kern_return_t ;
typedef int integer_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ kernel_thread_create (int ,void*,int ,int *) ;
 int thread_mtx_lock (int ) ;
 int thread_mtx_unlock (int ) ;
 int thread_start (int ) ;

kern_return_t
kernel_thread_start_priority(
 thread_continue_t continuation,
 void *parameter,
 integer_t priority,
 thread_t *new_thread)
{
 kern_return_t result;
 thread_t thread;

 result = kernel_thread_create(continuation, parameter, priority, &thread);
 if (result != KERN_SUCCESS)
  return (result);

 *new_thread = thread;

 thread_mtx_lock(thread);
 thread_start(thread);
 thread_mtx_unlock(thread);

 return (result);
}
