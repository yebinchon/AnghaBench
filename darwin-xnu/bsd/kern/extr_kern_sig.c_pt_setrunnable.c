
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_t ;
typedef TYPE_1__* proc_t ;
typedef int caddr_t ;
struct TYPE_5__ {int p_lflag; scalar_t__ sigwait; int p_stat; int task; } ;


 int P_LSIGEXC ;
 int P_LTRACED ;
 int SRUN ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int task_release (int ) ;
 int wakeup (int ) ;

void
pt_setrunnable(proc_t p)
{
 task_t task;

 task = p->task;

 if (p->p_lflag & P_LTRACED) {
  proc_lock(p);
  p->p_stat = SRUN;
  proc_unlock(p);
  if (p->sigwait) {
   wakeup((caddr_t)&(p->sigwait));
   if ((p->p_lflag & P_LSIGEXC) == 0) {
    task_release(task);
   }
  }
 }
}
