
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_12__ {int p_lflag; int p_pid; char* p_comm; int task; } ;


 int ESRCH ;
 scalar_t__ PROC_ACTION_STATE (TYPE_1__*) ;
 int PROC_CONTROL_STATE (TYPE_1__*) ;
 TYPE_1__* PROC_NULL ;
 int PROC_RESETACTION_STATE (TYPE_1__*) ;
 int PROC_SETACTION_STATE (TYPE_1__*) ;
 int P_LVMRSRCOWNER ;



 TYPE_1__* current_proc () ;
 int kauth_cred_get () ;
 int printf (char*,int,char*) ;
 TYPE_1__* proc_find (int) ;
 int proc_lock (TYPE_1__*) ;
 int proc_rele (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int suser (int ,int ) ;
 int task_resume (int ) ;

int
proc_resetpcontrol(int pid)
{
 proc_t p;
 int pcontrol;
 int error;
 proc_t self = current_proc();


 if (((self->p_lflag & P_LVMRSRCOWNER) == 0) && (error = suser(kauth_cred_get(), 0)))
  return error;

 p = proc_find(pid);
 if (p == PROC_NULL)
  return(ESRCH);

 proc_lock(p);

 pcontrol = PROC_CONTROL_STATE(p);

 if(PROC_ACTION_STATE(p) !=0) {
  switch(pcontrol) {
   case 128:
    PROC_RESETACTION_STATE(p);
    proc_unlock(p);
    printf("low swap: unthrottling pid %d (%s)\n", p->p_pid, p->p_comm);
    break;

   case 129:
    PROC_RESETACTION_STATE(p);
    proc_unlock(p);
    printf("low swap: resuming pid %d (%s)\n", p->p_pid, p->p_comm);
    task_resume(p->task);
    break;

   case 130:

    PROC_SETACTION_STATE(p);
    proc_unlock(p);
    printf("low swap: attempt to unkill pid %d (%s) ignored\n", p->p_pid, p->p_comm);
    break;

   default:
    proc_unlock(p);
  }

 } else
  proc_unlock(p);

 proc_rele(p);
 return(0);
}
