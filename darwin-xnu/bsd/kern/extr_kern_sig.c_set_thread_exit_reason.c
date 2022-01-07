
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {scalar_t__ uu_exit_reason; } ;
struct task {int dummy; } ;
typedef int * proc_t ;
typedef scalar_t__ os_reason_t ;
typedef int boolean_t ;


 scalar_t__ OS_REASON_NULL ;
 int assert (int ) ;
 scalar_t__ get_bsdtask_info (struct task*) ;
 struct uthread* get_bsdthread_info (void*) ;
 struct task* get_threadtask (void*) ;
 int os_reason_free (scalar_t__) ;
 int proc_lock (int *) ;
 int proc_unlock (int *) ;

void
set_thread_exit_reason(void *th, void *reason, boolean_t proc_locked)
{
 struct uthread *targ_uth = get_bsdthread_info(th);
 struct task *targ_task = ((void*)0);
 proc_t targ_proc = ((void*)0);

 os_reason_t exit_reason = (os_reason_t)reason;

 if (exit_reason == OS_REASON_NULL)
  return;

 if (!proc_locked) {
  targ_task = get_threadtask(th);
  targ_proc = (proc_t)(get_bsdtask_info(targ_task));

  proc_lock(targ_proc);
 }

 if (targ_uth->uu_exit_reason == OS_REASON_NULL) {
  targ_uth->uu_exit_reason = exit_reason;
 } else {

  os_reason_free(exit_reason);
 }

 if (!proc_locked) {
  assert(targ_proc != ((void*)0));
  proc_unlock(targ_proc);
 }
}
