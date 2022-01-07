
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int thread_t ;
struct uthread {int uu_flag; int uu_siglist; int uu_sigwait; int uu_sigmask; scalar_t__ uu_exit_reason; int uu_code; TYPE_1__* uu_proc; } ;
struct task {int dummy; } ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ os_reason_t ;
typedef int mach_exception_code_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int p_lflag; int p_sigignore; int p_sigcatch; int p_pid; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_PROC_EXITREASON_CREATE ;
 int DBG_BSD_PROC ;
 int DBG_FUNC_NONE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int,int ,int ) ;
 scalar_t__ NSIG ;
 scalar_t__ OS_REASON_NULL ;
 int OS_REASON_SIGNAL ;
 int P_LTRACED ;
 int TRUE ;
 int UT_VFORK ;
 scalar_t__ build_signal_reason (int,char*) ;
 int contsigmask ;
 scalar_t__ get_bsdtask_info (struct task*) ;
 struct uthread* get_bsdthread_info (int ) ;
 struct task* get_threadtask (int ) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int set_thread_exit_reason (int ,scalar_t__,int ) ;
 int sigmask (int) ;
 int signal_setast (int ) ;
 int stopsigmask ;
 int threadmask ;

void
threadsignal(thread_t sig_actthread, int signum, mach_exception_code_t code, boolean_t set_exitreason)
{
 struct uthread *uth;
 struct task * sig_task;
 proc_t p;
 int mask;

 if ((u_int)signum >= NSIG || signum == 0)
  return;

 mask = sigmask(signum);
 if ((mask & threadmask) == 0)
  return;
 sig_task = get_threadtask(sig_actthread);
 p = (proc_t)(get_bsdtask_info(sig_task));

 uth = get_bsdthread_info(sig_actthread);
 if (uth->uu_flag & UT_VFORK)
  p = uth->uu_proc;

 proc_lock(p);
 if (!(p->p_lflag & P_LTRACED) && (p->p_sigignore & mask)) {
  proc_unlock(p);
  return;
 }

 uth->uu_siglist |= mask;
 uth->uu_code = code;


 if (set_exitreason && ((p->p_lflag & P_LTRACED) || (!(uth->uu_sigwait & mask)
  && !(uth->uu_sigmask & mask) && !(p->p_sigcatch & mask))) &&
  !(mask & stopsigmask) && !(mask & contsigmask)) {

  if (uth->uu_exit_reason == OS_REASON_NULL) {
   KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
        p->p_pid, OS_REASON_SIGNAL, signum, 0, 0);

   os_reason_t signal_reason = build_signal_reason(signum, "exc handler");

   set_thread_exit_reason(sig_actthread, signal_reason, TRUE);


   signal_reason = OS_REASON_NULL;
  }
 }

 proc_unlock(p);


 signal_setast(sig_actthread);
}
