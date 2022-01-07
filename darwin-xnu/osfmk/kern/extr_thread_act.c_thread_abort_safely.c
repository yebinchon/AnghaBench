
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_11__ {int sched_flags; int at_safe_point; scalar_t__ active; } ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ KERN_TERMINATED ;
 int THREAD_INTERRUPTED ;
 TYPE_1__* THREAD_NULL ;
 int TH_SFLAG_ABORT ;
 int TH_SFLAG_ABORTED_MASK ;
 scalar_t__ clear_wait_internal (TYPE_1__*,int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_depress_abort_locked (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_set_apc_ast_locked (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

kern_return_t
thread_abort_safely(
 thread_t thread)
{
 kern_return_t result = KERN_SUCCESS;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active) {
  spl_t s = splsched();

  thread_lock(thread);
  if (!thread->at_safe_point ||
    clear_wait_internal(thread, THREAD_INTERRUPTED) != KERN_SUCCESS) {
   if (!(thread->sched_flags & TH_SFLAG_ABORT)) {
    thread->sched_flags |= TH_SFLAG_ABORTED_MASK;
    thread_set_apc_ast_locked(thread);
    thread_depress_abort_locked(thread);
   }
  }
  thread_unlock(thread);
  splx(s);
 } else {
  result = KERN_TERMINATED;
 }

 thread_mtx_unlock(thread);

 return (result);
}
