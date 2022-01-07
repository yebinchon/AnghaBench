
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
struct TYPE_7__ {scalar_t__ task; scalar_t__ user_stop_count; scalar_t__ active; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 TYPE_1__* THREAD_NULL ;
 scalar_t__ kernel_task ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_release (TYPE_1__*) ;

kern_return_t
thread_resume(thread_t thread)
{
 kern_return_t result = KERN_SUCCESS;

 if (thread == THREAD_NULL || thread->task == kernel_task)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active) {
  if (thread->user_stop_count > 0) {
   if (--thread->user_stop_count == 0)
    thread_release(thread);
  } else {
   result = KERN_FAILURE;
  }
 } else {
  result = KERN_TERMINATED;
 }

 thread_mtx_unlock(thread);

 return (result);
}
