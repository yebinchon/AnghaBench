
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
struct TYPE_8__ {scalar_t__ active; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 int THREAD_INTERRUPTED ;
 TYPE_1__* THREAD_NULL ;
 int act_abort (TYPE_1__*) ;
 int clear_wait (TYPE_1__*,int ) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

kern_return_t
thread_abort(
 thread_t thread)
{
 kern_return_t result = KERN_SUCCESS;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active) {
  act_abort(thread);
  clear_wait(thread, THREAD_INTERRUPTED);
 }
 else
  result = KERN_TERMINATED;

 thread_mtx_unlock(thread);

 return (result);
}
