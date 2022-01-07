
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_9__ {scalar_t__ task; int user_stop_count; scalar_t__ active; } ;


 int FALSE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ KERN_TERMINATED ;
 TYPE_1__* THREAD_NULL ;
 TYPE_1__* current_thread () ;
 scalar_t__ kernel_task ;
 int thread_hold (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_wait (TYPE_1__*,int ) ;

kern_return_t
thread_suspend(thread_t thread)
{
 kern_return_t result = KERN_SUCCESS;

 if (thread == THREAD_NULL || thread->task == kernel_task)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active) {
  if (thread->user_stop_count++ == 0)
   thread_hold(thread);
 } else {
  result = KERN_TERMINATED;
 }

 thread_mtx_unlock(thread);

 if (thread != current_thread() && result == KERN_SUCCESS)
  thread_wait(thread, FALSE);

 return (result);
}
