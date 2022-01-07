
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int thread_t ;
typedef scalar_t__ task_t ;
typedef TYPE_2__* proc_t ;
typedef int boolean_t ;
struct TYPE_16__ {int p_lflag; int p_uthlist; scalar_t__ p_return_to_kernel_offset; scalar_t__ p_dispatchqueue_serialno_offset; scalar_t__ p_dispatchqueue_offset; scalar_t__ task; } ;
struct TYPE_15__ {scalar_t__ uu_siglist; int * uu_exit_reason; int * t_dtrace_scratch; scalar_t__ t_dtrace_resumepid; scalar_t__ t_dtrace_stop; scalar_t__ t_dtrace_sig; int uu_vforkmask; int uu_oldmask; int uu_sigmask; int uu_sigwait; } ;


 int P_LEXIT ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int TRUE ;
 int act_set_astbsd (int ) ;
 int assert (int) ;
 int current_thread () ;
 TYPE_1__* get_bsdthread_info (int ) ;
 scalar_t__ get_threadtask (int ) ;
 int proc_lock (TYPE_2__*) ;
 TYPE_2__* proc_refdrain_with_refwait (TYPE_2__*,int ) ;
 int proc_refwake (TYPE_2__*) ;
 int proc_transend (TYPE_2__*,int) ;
 int proc_transstart (TYPE_2__*,int,int ) ;
 int proc_unlock (TYPE_2__*) ;
 int task_clear_exec_copy_flag (scalar_t__) ;
 int task_copy_fields_for_exec (scalar_t__,scalar_t__) ;
 int task_is_active (scalar_t__) ;
 int task_set_did_exec_flag (scalar_t__) ;
 int task_terminate_internal (scalar_t__) ;
 int thread_clear_exec_promotion (int ) ;
 int thread_copy_resource_info (int ,int ) ;
 int thread_is_active (int ) ;
 int thread_set_exec_promotion (int ) ;
 int uu_list ;

proc_t
proc_exec_switch_task(proc_t p, task_t old_task, task_t new_task, thread_t new_thread)
{
 int error = 0;
 boolean_t task_active;
 boolean_t proc_active;
 boolean_t thread_active;
 thread_t old_thread = current_thread();
 thread_set_exec_promotion(old_thread);
 p = proc_refdrain_with_refwait(p, TRUE);


 assert(get_threadtask(new_thread) == new_task);
 task_active = task_is_active(new_task);


 proc_lock(p);
 proc_active = !(p->p_lflag & P_LEXIT);


 thread_active = thread_is_active(old_thread);





 if (proc_active && task_active && thread_active) {
  error = proc_transstart(p, 1, 0);
  if (error == 0) {
   uthread_t new_uthread = get_bsdthread_info(new_thread);
   uthread_t old_uthread = get_bsdthread_info(current_thread());





   p->task = new_task;


   p->p_dispatchqueue_offset = 0;
   p->p_dispatchqueue_serialno_offset = 0;
   p->p_return_to_kernel_offset = 0;


   act_set_astbsd(new_thread);
   new_uthread->uu_siglist = old_uthread->uu_siglist;
   new_uthread->uu_sigwait = old_uthread->uu_sigwait;
   new_uthread->uu_sigmask = old_uthread->uu_sigmask;
   new_uthread->uu_oldmask = old_uthread->uu_oldmask;
   new_uthread->uu_vforkmask = old_uthread->uu_vforkmask;
   new_uthread->uu_exit_reason = old_uthread->uu_exit_reason;
   thread_copy_resource_info(new_thread, current_thread());


   old_uthread->uu_exit_reason = ((void*)0);
   old_uthread->uu_siglist = 0;


   TAILQ_INSERT_TAIL(&p->p_uthlist, new_uthread, uu_list);
   TAILQ_REMOVE(&p->p_uthlist, old_uthread, uu_list);

   task_set_did_exec_flag(old_task);
   task_clear_exec_copy_flag(new_task);

   task_copy_fields_for_exec(new_task, old_task);

   proc_transend(p, 1);
  }
 }

 proc_unlock(p);
 proc_refwake(p);
 thread_clear_exec_promotion(old_thread);

 if (error != 0 || !task_active || !proc_active || !thread_active) {
  task_terminate_internal(new_task);
 }

 return p;
}
