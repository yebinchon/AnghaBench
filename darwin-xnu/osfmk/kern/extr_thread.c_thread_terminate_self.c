
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int thread_continue_t ;
typedef TYPE_2__* task_t ;
typedef int spl_t ;
typedef int mach_exception_data_type_t ;
typedef int event_t ;
struct TYPE_27__ {int active_thread_count; scalar_t__ corpse_info; int * bsd_info; } ;
struct TYPE_26__ {int sched_flags; scalar_t__ depress_timer_active; scalar_t__ wait_timer_active; scalar_t__ reserved_stack; scalar_t__ promotions; scalar_t__ was_promoted_on_wakeup; scalar_t__ rwlock_count; int * waiting_for_mutex; int state; int wait_timer; scalar_t__ wait_timer_is_set; int uthread; TYPE_2__* task; } ;


 int DTRACE_PROC (int ) ;
 int EXC_RESOURCE ;
 scalar_t__ FALSE ;
 int KDBG_RELEASE (int ,long,long,...) ;
 int MAXTHREADNAMESIZE ;
 int THREAD_UNINT ;
 int TH_SFLAG_DEPRESSED_MASK ;
 int TH_SFLAG_EXEC_PROMOTED ;
 int TH_SFLAG_PROMOTED ;
 int TH_SFLAG_RW_PROMOTED ;
 int TH_SFLAG_WAITQ_PROMOTED ;
 int TH_TERMINATE ;
 int TRACE_DATA_THREAD_TERMINATE_PID ;
 int TRACE_STRING_PROC_EXIT ;
 int TRACE_STRING_THREADNAME_PREV ;
 int USEC_PER_SEC ;
 int assert (int) ;
 int bank_swap_thread_bank_ledger (TYPE_1__*,int *) ;
 int bsd_getthreadname (int ,char*) ;
 scalar_t__ bsd_hasthreadname (int ) ;
 TYPE_1__* current_thread () ;
 int delay (int ) ;
 int hw_atomic_sub (int *,int) ;
 int ipc_thread_disable (TYPE_1__*) ;
 int kdbg_trace_data (int *,long*,long*) ;
 int kdbg_trace_string (int *,long*,long*,long*,long*) ;
 scalar_t__ kdebug_enable ;
 int kernel_debug_string_simple (int ,char*) ;
 int lwp__exit ;
 int pal_thread_terminate_self (TYPE_1__*) ;
 int panic (char*,TYPE_1__*,scalar_t__) ;
 int proc_encode_exit_exception_code (int *) ;
 int proc_exit (int *) ;
 int splsched () ;
 int splx (int ) ;
 int stack_free_reserved (TYPE_1__*) ;
 int task_deliver_crash_notification (TYPE_2__*,TYPE_1__*,int ,int ) ;
 scalar_t__ task_is_a_corpse_fork (TYPE_2__*) ;
 int task_is_exec_copy (TYPE_2__*) ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;
 int thead_remove_taskwatch (TYPE_1__*) ;
 int thread_block (int ) ;
 int thread_depress_abort_locked (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_mark_wait_locked (TYPE_1__*,int ) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_policy_reset (TYPE_1__*) ;
 int thread_sched_call (TYPE_1__*,int *) ;
 scalar_t__ thread_terminate_continue ;
 int thread_unlock (TYPE_1__*) ;
 int thread_wakeup (int ) ;
 scalar_t__ timer_call_cancel (int *) ;
 int uthread_cleanup (TYPE_2__*,int ,int *) ;
 int uthread_cred_free (int ) ;
 int work_interval_thread_terminate (TYPE_1__*) ;

void
thread_terminate_self(void)
{
 thread_t thread = current_thread();
 task_t task;
 int threadcnt;

 pal_thread_terminate_self(thread);

 DTRACE_PROC(lwp__exit);

 thread_mtx_lock(thread);

 ipc_thread_disable(thread);

 thread_mtx_unlock(thread);

 thread_sched_call(thread, ((void*)0));

 spl_t s = splsched();
 thread_lock(thread);

 thread_depress_abort_locked(thread);

 thread_unlock(thread);
 splx(s);





 work_interval_thread_terminate(thread);

 thread_mtx_lock(thread);

 thread_policy_reset(thread);

 thread_mtx_unlock(thread);

 bank_swap_thread_bank_ledger(thread, ((void*)0));

 if (kdebug_enable && bsd_hasthreadname(thread->uthread)) {
  char threadname[MAXTHREADNAMESIZE];
  bsd_getthreadname(thread->uthread, threadname);
  kernel_debug_string_simple(TRACE_STRING_THREADNAME_PREV, threadname);
 }

 task = thread->task;
 uthread_cleanup(task, thread->uthread, task->bsd_info);

 if (kdebug_enable && task->bsd_info && !task_is_exec_copy(task)) {

  long dbg_arg1 = 0;
  long dbg_arg2 = 0;

  kdbg_trace_data(thread->task->bsd_info, &dbg_arg1, &dbg_arg2);
  KDBG_RELEASE(TRACE_DATA_THREAD_TERMINATE_PID, dbg_arg1, dbg_arg2);
 }
 threadcnt = hw_atomic_sub(&task->active_thread_count, 1);





 if (threadcnt == 0 && task->bsd_info != ((void*)0) && !task_is_exec_copy(task)) {
  mach_exception_data_type_t subcode = 0;
  if (kdebug_enable) {

   long args[4] = {};
   kdbg_trace_string(thread->task->bsd_info, &args[0], &args[1], &args[2], &args[3]);
   KDBG_RELEASE(TRACE_STRING_PROC_EXIT, args[0], args[1], args[2], args[3]);
  }


  subcode = proc_encode_exit_exception_code(task->bsd_info);
  proc_exit(task->bsd_info);





  if (task->corpse_info) {
   task_deliver_crash_notification(task, current_thread(), EXC_RESOURCE, subcode);
  }
 }

 if (threadcnt == 0) {
  task_lock(task);
  if (task_is_a_corpse_fork(task)) {
   thread_wakeup((event_t)&task->active_thread_count);
  }
  task_unlock(task);
 }

 uthread_cred_free(thread->uthread);

 s = splsched();
 thread_lock(thread);
 assert((thread->sched_flags & TH_SFLAG_DEPRESSED_MASK) == 0);

 uint32_t delay_us = 1;

 while (thread->depress_timer_active > 0) {
  thread_unlock(thread);
  splx(s);

  delay(delay_us++);

  if (delay_us > USEC_PER_SEC)
   panic("depress timer failed to inactivate!"
         "thread: %p depress_timer_active: %d",
         thread, thread->depress_timer_active);

  s = splsched();
  thread_lock(thread);
 }





 if (thread->wait_timer_is_set) {
  thread->wait_timer_is_set = FALSE;

  if (timer_call_cancel(&thread->wait_timer))
   thread->wait_timer_active--;
 }

 delay_us = 1;

 while (thread->wait_timer_active > 0) {
  thread_unlock(thread);
  splx(s);

  delay(delay_us++);

  if (delay_us > USEC_PER_SEC)
   panic("wait timer failed to inactivate!"
         "thread: %p wait_timer_active: %d",
         thread, thread->wait_timer_active);

  s = splsched();
  thread_lock(thread);
 }




 if (thread->reserved_stack != 0) {
  stack_free_reserved(thread);
  thread->reserved_stack = 0;
 }




 thread->state |= TH_TERMINATE;
 thread_mark_wait_locked(thread, THREAD_UNINT);

 assert((thread->sched_flags & TH_SFLAG_WAITQ_PROMOTED) == 0);
 assert((thread->sched_flags & TH_SFLAG_RW_PROMOTED) == 0);
 assert((thread->sched_flags & TH_SFLAG_EXEC_PROMOTED) == 0);
 assert((thread->sched_flags & TH_SFLAG_PROMOTED) == 0);
 assert(thread->promotions == 0);
 assert(thread->was_promoted_on_wakeup == 0);
 assert(thread->waiting_for_mutex == ((void*)0));
 assert(thread->rwlock_count == 0);

 thread_unlock(thread);


 thread_block((thread_continue_t)thread_terminate_continue);

}
