
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_9__ {int p_pid; char* p_comm; int task; } ;


 scalar_t__ PROC_ACTION_STATE (TYPE_1__*) ;
 int PROC_CONTROL_STATE (TYPE_1__*) ;
 int PROC_RETURNED ;
 int PROC_SETACTION_STATE (TYPE_1__*) ;



 int SIGKILL ;
 int printf (char*,int,char*) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int psignal (TYPE_1__*,int ) ;
 int task_suspend (int ) ;

int
proc_dopcontrol(proc_t p)
{
 int pcontrol;

 proc_lock(p);

 pcontrol = PROC_CONTROL_STATE(p);

 if (PROC_ACTION_STATE(p) == 0) {
  switch(pcontrol) {
   case 128:
    PROC_SETACTION_STATE(p);
    proc_unlock(p);
    printf("low swap: throttling pid %d (%s)\n", p->p_pid, p->p_comm);
    break;

   case 129:
    PROC_SETACTION_STATE(p);
    proc_unlock(p);
    printf("low swap: suspending pid %d (%s)\n", p->p_pid, p->p_comm);
    task_suspend(p->task);
    break;

   case 130:
    PROC_SETACTION_STATE(p);
    proc_unlock(p);
    printf("low swap: killing pid %d (%s)\n", p->p_pid, p->p_comm);
    psignal(p, SIGKILL);
    break;

   default:
    proc_unlock(p);
  }

 } else
  proc_unlock(p);

 return(PROC_RETURNED);
}
