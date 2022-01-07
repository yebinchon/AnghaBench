
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_context_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct sd_iterargs {int setsdstate; int countproc; scalar_t__ activecount; scalar_t__ signo; } ;
struct sd_filterargs {int delayterm; int shutdownstate; } ;
struct TYPE_4__ {struct proc* le_next; } ;
struct proc {int p_listflag; int p_shutdownstate; char* p_comm; int p_pid; int task; TYPE_1__ p_list; } ;
struct TYPE_6__ {struct proc* lh_first; } ;
struct TYPE_5__ {struct proc* lh_first; } ;


 int ETIMEDOUT ;
 int PWAIT ;
 int P_LIST_EXITCOUNT ;
 scalar_t__ SIGKILL ;
 scalar_t__ SIGTERM ;
 TYPE_3__ allproc ;
 scalar_t__ current_proc () ;
 struct proc* initproc ;
 int msleep (scalar_t__*,int ,int ,char*,struct timespec*) ;
 int printf (char*,...) ;
 struct proc* proc_find (int) ;
 int proc_list_lock () ;
 int proc_list_mlock ;
 int proc_list_unlock () ;
 int proc_rebootscan (int ,void*,int ,void*) ;
 int proc_rele (struct proc*) ;
 scalar_t__ proc_shutdown_exitcount ;
 int psignal (struct proc*,scalar_t__) ;
 int sd_callback1 ;
 int sd_callback2 ;
 int sd_callback3 ;
 int sd_closelog (int ) ;
 int sd_filt1 ;
 int sd_filt2 ;
 int sd_log (int ,char*,char*,int) ;
 int task_suspend_internal (int ) ;
 int vfs_context_current () ;
 TYPE_2__ zombproc ;

__attribute__((used)) static void
proc_shutdown(void)
{
 vfs_context_t ctx = vfs_context_current();
 struct proc *p, *self;
 int delayterm = 0;
 struct sd_filterargs sfargs;
 struct sd_iterargs sdargs;
 int error = 0;
 struct timespec ts;




 self = (struct proc *)current_proc();





 p = proc_find(1);
 if (p && p != self) {
  psignal(p, SIGTERM);
 }
 proc_rele(p);

 printf("Killing all processes ");

sigterm_loop:



 sfargs.delayterm = delayterm;
 sfargs.shutdownstate = 0;
 sdargs.signo = SIGTERM;
 sdargs.setsdstate = 1;
 sdargs.countproc = 1;
 sdargs.activecount = 0;

 error = 0;

 proc_rebootscan(sd_callback1, (void *)&sdargs, sd_filt1, (void *)&sfargs);

 if (sdargs.activecount != 0 && proc_shutdown_exitcount!= 0) {
  proc_list_lock();
  if (proc_shutdown_exitcount != 0) {





   ts.tv_sec = 3;
   ts.tv_nsec = 0;
   error = msleep(&proc_shutdown_exitcount, proc_list_mlock, PWAIT, "shutdownwait", &ts);
   if (error != 0) {
    for (p = allproc.lh_first; p; p = p->p_list.le_next) {
     if ((p->p_listflag & P_LIST_EXITCOUNT) == P_LIST_EXITCOUNT)
      p->p_listflag &= ~P_LIST_EXITCOUNT;
    }
    for (p = zombproc.lh_first; p; p = p->p_list.le_next) {
     if ((p->p_listflag & P_LIST_EXITCOUNT) == P_LIST_EXITCOUNT)
      p->p_listflag &= ~P_LIST_EXITCOUNT;
    }
   }
  }
  proc_list_unlock();
 }
 if (error == ETIMEDOUT) {




  proc_list_lock();

  for (p = allproc.lh_first; p; p = p->p_list.le_next) {
   if (p->p_shutdownstate == 1) {
    printf("%s[%d]: didn't act on SIGTERM\n", p->p_comm, p->p_pid);
    sd_log(ctx, "%s[%d]: didn't act on SIGTERM\n", p->p_comm, p->p_pid);
   }
  }

  proc_list_unlock();
 }




 sfargs.delayterm = delayterm;
 sfargs.shutdownstate = 2;
 sdargs.signo = SIGKILL;
 sdargs.setsdstate = 2;
 sdargs.countproc = 1;
 sdargs.activecount = 0;


 proc_rebootscan(sd_callback2, (void *)&sdargs, sd_filt2, (void *)&sfargs);

 error = 0;

 if (sdargs.activecount != 0 && proc_shutdown_exitcount!= 0) {
  proc_list_lock();
  if (proc_shutdown_exitcount != 0) {






   ts.tv_sec = 10;
   ts.tv_nsec = 0;
   error = msleep(&proc_shutdown_exitcount, proc_list_mlock, PWAIT, "shutdownwait", &ts);
   if (error != 0) {
    for (p = allproc.lh_first; p; p = p->p_list.le_next) {
     if ((p->p_listflag & P_LIST_EXITCOUNT) == P_LIST_EXITCOUNT)
      p->p_listflag &= ~P_LIST_EXITCOUNT;
    }
    for (p = zombproc.lh_first; p; p = p->p_list.le_next) {
     if ((p->p_listflag & P_LIST_EXITCOUNT) == P_LIST_EXITCOUNT)
      p->p_listflag &= ~P_LIST_EXITCOUNT;
    }
   }
  }
  proc_list_unlock();
 }

 if (error == ETIMEDOUT) {




  proc_list_lock();

  for (p = allproc.lh_first; p; p = p->p_list.le_next) {
   if (p->p_shutdownstate == 2) {
    printf("%s[%d]: didn't act on SIGKILL\n", p->p_comm, p->p_pid);
    sd_log(ctx, "%s[%d]: didn't act on SIGKILL\n", p->p_comm, p->p_pid);
   }
  }

  proc_list_unlock();
 }




 sfargs.delayterm = delayterm;
 sfargs.shutdownstate = 3;
 sdargs.signo = 0;
 sdargs.setsdstate = 3;
 sdargs.countproc = 0;
 sdargs.activecount = 0;




 proc_rebootscan(sd_callback3, (void *)&sdargs, sd_filt2, (void *)&sfargs);
 printf("\n");


 if (delayterm == 0) {
  delayterm = 1;
  goto sigterm_loop;
 }

 sd_closelog(ctx);




 task_suspend_internal(initproc->task);


 proc_rele(initproc);
 printf("continuing\n");
}
