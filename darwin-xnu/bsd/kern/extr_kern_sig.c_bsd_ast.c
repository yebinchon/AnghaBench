
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_16__ ;


typedef int user_addr_t ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int thread_t ;
struct uthread {scalar_t__ t_dtrace_resumepid; scalar_t__ t_dtrace_stop; scalar_t__ t_dtrace_sig; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_24__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_22__ {TYPE_2__ it_value; } ;
struct TYPE_23__ {int p_flag; int p_dtrace_stop; int task; TYPE_2__ p_rlim_cpu; TYPE_16__ p_vtimer_prof; TYPE_16__ p_vtimer_user; } ;


 scalar_t__ CHECK_SIGNALS (TYPE_1__*,int ,struct uthread*) ;
 int OSBitAndAtomic (int ,int*) ;
 TYPE_1__* PROC_NULL ;
 int P_OWEUPC ;
 int P_PROFIL ;
 int SIGPROF ;
 int SIGVTALRM ;
 int SIGXCPU ;
 int TASK_VTIMER_PROF ;
 int TASK_VTIMER_RLIM ;
 int TASK_VTIMER_USER ;
 int addupc_task (TYPE_1__*,int ,int) ;
 int bsdinit_task () ;
 TYPE_1__* current_proc () ;
 int current_task () ;
 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 int get_useraddr () ;
 int issignal_locked (TYPE_1__*) ;
 int itimerdecr (TYPE_1__*,TYPE_16__*,int ) ;
 int postsig_locked (int) ;
 TYPE_1__* proc_find (scalar_t__) ;
 int proc_lock (TYPE_1__*) ;
 int proc_log_32bit_telemetry (TYPE_1__*) ;
 int proc_rele (TYPE_1__*) ;
 int proc_spinlock (TYPE_1__*) ;
 int proc_spinunlock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int psignal (TYPE_1__*,scalar_t__) ;
 int psignal_try_thread (TYPE_1__*,int ,int ) ;
 scalar_t__ task_consume_32bit_log_flag (int ) ;
 scalar_t__ task_did_exec (int ) ;
 scalar_t__ task_is_exec_copy (int ) ;
 int task_resume_internal (int ) ;
 int task_suspend_internal (int ) ;
 int task_vtimer_clear (int ,int ) ;
 int task_vtimer_set (int ,int ) ;
 int task_vtimer_update (int ,int ,int *) ;
 int timerclear (TYPE_2__*) ;
 scalar_t__ timerisset (TYPE_2__*) ;
 int timersub (TYPE_2__*,struct timeval*,TYPE_2__*) ;

void
bsd_ast(thread_t thread)
{
 proc_t p = current_proc();
 struct uthread *ut = get_bsdthread_info(thread);
 int signum;
 user_addr_t pc;
 static int bsd_init_done = 0;

 if (p == ((void*)0))
  return;


 if (task_did_exec(current_task()) || task_is_exec_copy(current_task())) {
  return;
 }

 if ((p->p_flag & P_OWEUPC) && (p->p_flag & P_PROFIL)) {
  pc = get_useraddr();
  addupc_task(p, pc, 1);
  OSBitAndAtomic(~((uint32_t)P_OWEUPC), &p->p_flag);
 }

 if (timerisset(&p->p_vtimer_user.it_value)) {
  uint32_t microsecs;

  task_vtimer_update(p->task, TASK_VTIMER_USER, &microsecs);

  if (!itimerdecr(p, &p->p_vtimer_user, microsecs)) {
   if (timerisset(&p->p_vtimer_user.it_value))
    task_vtimer_set(p->task, TASK_VTIMER_USER);
   else
    task_vtimer_clear(p->task, TASK_VTIMER_USER);

   psignal_try_thread(p, thread, SIGVTALRM);
  }
 }

 if (timerisset(&p->p_vtimer_prof.it_value)) {
  uint32_t microsecs;

  task_vtimer_update(p->task, TASK_VTIMER_PROF, &microsecs);

  if (!itimerdecr(p, &p->p_vtimer_prof, microsecs)) {
   if (timerisset(&p->p_vtimer_prof.it_value))
    task_vtimer_set(p->task, TASK_VTIMER_PROF);
   else
    task_vtimer_clear(p->task, TASK_VTIMER_PROF);

   psignal_try_thread(p, thread, SIGPROF);
  }
 }

 if (timerisset(&p->p_rlim_cpu)) {
  struct timeval tv;

  task_vtimer_update(p->task, TASK_VTIMER_RLIM, (uint32_t *) &tv.tv_usec);

  proc_spinlock(p);
  if (p->p_rlim_cpu.tv_sec > 0 || p->p_rlim_cpu.tv_usec > tv.tv_usec) {
   tv.tv_sec = 0;
   timersub(&p->p_rlim_cpu, &tv, &p->p_rlim_cpu);
   proc_spinunlock(p);
  } else {

   timerclear(&p->p_rlim_cpu);
   proc_spinunlock(p);

   task_vtimer_clear(p->task, TASK_VTIMER_RLIM);

   psignal_try_thread(p, thread, SIGXCPU);
  }
 }
 proc_lock(p);
 if (CHECK_SIGNALS(p, current_thread(), ut)) {
  while ( (signum = issignal_locked(p)) )
   postsig_locked(signum);
 }
 proc_unlock(p);







 if (!bsd_init_done) {
  bsd_init_done = 1;
  bsdinit_task();
 }
}
