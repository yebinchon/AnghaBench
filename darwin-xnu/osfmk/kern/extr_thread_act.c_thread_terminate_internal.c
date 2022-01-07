
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_11__ {int * affinity_set; scalar_t__ started; scalar_t__ active; } ;


 scalar_t__ FALSE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ KERN_TERMINATED ;
 int THREAD_INTERRUPTED ;
 int act_abort (TYPE_1__*) ;
 int clear_wait (TYPE_1__*,int ) ;
 TYPE_1__* current_thread () ;
 int thread_affinity_terminate (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_start (TYPE_1__*) ;
 int thread_wait (TYPE_1__*,scalar_t__) ;

kern_return_t
thread_terminate_internal(
 thread_t thread)
{
 kern_return_t result = KERN_SUCCESS;

 thread_mtx_lock(thread);

 if (thread->active) {
  thread->active = FALSE;

  act_abort(thread);

  if (thread->started)
   clear_wait(thread, THREAD_INTERRUPTED);
  else {
   thread_start(thread);
  }
 }
 else
  result = KERN_TERMINATED;

 if (thread->affinity_set != ((void*)0))
  thread_affinity_terminate(thread);

 thread_mtx_unlock(thread);

 if (thread != current_thread() && result == KERN_SUCCESS)
  thread_wait(thread, FALSE);

 return (result);
}
