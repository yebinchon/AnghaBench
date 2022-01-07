
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
struct TYPE_15__ {scalar_t__ affinity_set; scalar_t__ inspection; scalar_t__ active; } ;


 scalar_t__ AFFINITY_SET_NULL ;
 int KERN_ABORTED ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 TYPE_1__* THREAD_NULL ;
 int TRUE ;
 int machine_thread_dup (TYPE_1__*,TYPE_1__*,int ) ;
 int thread_affinity_dup (TYPE_1__*,TYPE_1__*) ;
 int thread_hold (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_release (TYPE_1__*) ;
 scalar_t__ thread_stop (TYPE_1__*,int ) ;
 int thread_unstop (TYPE_1__*) ;

kern_return_t
thread_dup2(
 thread_t source,
 thread_t target)
{
 kern_return_t result = KERN_SUCCESS;
 uint32_t active = 0;

 if (source == THREAD_NULL || target == THREAD_NULL || target == source)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(source);
 active = source->active;
 thread_mtx_unlock(source);

 if (!active) {
  return KERN_TERMINATED;
 }

 thread_mtx_lock(target);

 if (target->active || target->inspection) {
  thread_hold(target);

  thread_mtx_unlock(target);

  if (thread_stop(target, TRUE)) {
   thread_mtx_lock(target);
   result = machine_thread_dup(source, target, TRUE);
   if (source->affinity_set != AFFINITY_SET_NULL)
    thread_affinity_dup(source, target);
   thread_unstop(target);
  }
  else {
   thread_mtx_lock(target);
   result = KERN_ABORTED;
  }

  thread_release(target);
 }
 else
  result = KERN_TERMINATED;

 thread_mtx_unlock(target);

 return (result);
}
