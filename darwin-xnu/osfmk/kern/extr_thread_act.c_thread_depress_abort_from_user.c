
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
struct TYPE_7__ {scalar_t__ active; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_TERMINATED ;
 TYPE_1__* THREAD_NULL ;
 int thread_depress_abort (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

kern_return_t
thread_depress_abort_from_user(thread_t thread)
{
 kern_return_t result;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active)
  result = thread_depress_abort(thread);
 else
  result = KERN_TERMINATED;

 thread_mtx_unlock(thread);

 return (result);
}
