
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_2__* uthread_t ;
typedef scalar_t__ uid_t ;
typedef int * thread_t ;
typedef scalar_t__ rlim_t ;
typedef TYPE_3__* proc_t ;
typedef int coalition_t ;
struct TYPE_19__ {int p_pid; char* p_comm; void* p_acflag; int p_ucred; int task; int p_lflag; int p_stat; int * p_vforkact; TYPE_1__* p_rlimit; } ;
struct TYPE_18__ {int uu_flag; int uu_sigmask; int uu_vforkmask; void* uu_userstate; TYPE_3__* uu_proc; } ;
struct TYPE_17__ {scalar_t__ rlim_cur; } ;


 void* AFORK ;
 int AUDIT_ARG (int ,int) ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int FALSE ;



 int P_LINVFORK ;
 int P_LPPWAIT ;
 size_t RLIMIT_NPROC ;
 int SRUN ;
 int TRUE ;
 int UT_SETUID ;
 int UT_VFORK ;
 int UT_VFORKING ;
 int UT_WASSETUID ;
 scalar_t__ act_thread_csave () ;
 int chgproccnt (scalar_t__,int) ;
 int * cloneproc (int ,int *,TYPE_3__*,int ,int ) ;
 int current_thread () ;
 int dtrace_proc_fork (TYPE_3__*,TYPE_3__*,int) ;
 TYPE_3__* forkproc (TYPE_3__*) ;
 int get_bsdtask_info (int ) ;
 int get_bsdthread_info (int *) ;
 int get_threadtask (int *) ;
 scalar_t__ kauth_getruid () ;
 int mac_cred_label_associate_fork (int ,TYPE_3__*) ;
 int mac_proc_check_fork (TYPE_3__*) ;
 int maxproc ;
 int nprocs ;
 int panic (char*,int,...) ;
 int pid ;
 int pinsertchild (TYPE_3__*,TYPE_3__*) ;
 int printf (char*,char*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_vfork_begin (TYPE_3__*) ;
 int proc_vfork_end (TYPE_3__*) ;
 int set_security_token (TYPE_3__*) ;
 int tablefull (char*) ;
 int task_bank_init (int ) ;
 int thread_dup (int *) ;
 int thread_set_child (int *,int) ;

int
fork1(proc_t parent_proc, thread_t *child_threadp, int kind, coalition_t *coalitions)
{
 thread_t parent_thread = (thread_t)current_thread();
 uthread_t parent_uthread = (uthread_t)get_bsdthread_info(parent_thread);
 proc_t child_proc = ((void*)0);
 thread_t child_thread = ((void*)0);
 uid_t uid;
 int count;
 int err = 0;
 int spawn = 0;
 uid = kauth_getruid();
 proc_list_lock();
 if ((nprocs >= maxproc - 1 && uid != 0) || nprocs >= maxproc) {
  proc_list_unlock();
  tablefull("proc");
  return (EAGAIN);
 }
 proc_list_unlock();







 count = chgproccnt(uid, 1);
 if (uid != 0 &&
     (rlim_t)count > parent_proc->p_rlimit[RLIMIT_NPROC].rlim_cur) {
      err = EAGAIN;
  goto bad;
 }
 switch(kind) {
 case 128:
  if (parent_uthread->uu_flag & UT_VFORK) {
   printf("fork1 called within vfork by %s\n", parent_proc->p_comm);
   err = EINVAL;
   goto bad;
  }







  proc_vfork_begin(parent_proc);


  if ((child_proc = forkproc(parent_proc)) == ((void*)0)) {

   proc_vfork_end(parent_proc);
   err = ENOMEM;
   goto bad;
  }
  set_security_token(child_proc);

  AUDIT_ARG(pid, child_proc->p_pid);
  child_proc->task = parent_proc->task;

  child_proc->p_lflag |= P_LINVFORK;
  child_proc->p_vforkact = parent_thread;
  child_proc->p_stat = SRUN;
  parent_uthread->uu_flag |= UT_VFORK | UT_VFORKING;
  parent_uthread->uu_proc = child_proc;
  parent_uthread->uu_userstate = (void *)act_thread_csave();
  parent_uthread->uu_vforkmask = parent_uthread->uu_sigmask;


  if (parent_uthread->uu_flag & UT_SETUID) {
   parent_uthread->uu_flag |= UT_WASSETUID;
   parent_uthread->uu_flag &= ~UT_SETUID;
  }



  thread_set_child(parent_thread, child_proc->p_pid);

  child_proc->p_acflag = AFORK;






  child_proc->p_lflag |= P_LPPWAIT;
  pinsertchild(parent_proc, child_proc);

  break;

 case 129:






  spawn = 1;



 case 130:






  if ((child_thread = cloneproc(parent_proc->task,
      spawn ? coalitions : ((void*)0),
      parent_proc,
      spawn ? FALSE : TRUE,
      FALSE)) == ((void*)0)) {

   err = EAGAIN;
   goto bad;
  }


  if (!spawn) {
   thread_dup(child_thread);
  }


  child_proc = (proc_t)(get_bsdtask_info(get_threadtask(child_thread)));
  set_security_token(child_proc);

  AUDIT_ARG(pid, child_proc->p_pid);
  thread_set_child(child_thread, child_proc->p_pid);

  child_proc->p_acflag = AFORK;




  if (!spawn) {




   task_bank_init(get_threadtask(child_thread));
  }

  break;

 default:
  panic("fork1 called with unknown kind %d", kind);
  break;
 }



 *child_threadp = child_thread;

bad:





 if (err) {
  (void)chgproccnt(uid, -1);
 }

 return (err);
}
