
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_lflag; int p_transholder; int p_mlock; } ;


 int EDEADLK ;
 int P_LINTRANSIT ;
 int P_LTRANSCOMMIT ;
 int P_LTRANSWAIT ;
 int current_thread () ;
 int msleep (int*,int *,int ,char*,int *) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

int
proc_transstart(proc_t p, int locked, int non_blocking)
{
 if (locked == 0)
  proc_lock(p);
 while ((p->p_lflag & P_LINTRANSIT) == P_LINTRANSIT) {
  if (((p->p_lflag & P_LTRANSCOMMIT) == P_LTRANSCOMMIT) || non_blocking) {
   if (locked == 0)
    proc_unlock(p);
   return EDEADLK;
  }
  p->p_lflag |= P_LTRANSWAIT;
  msleep(&p->p_lflag, &p->p_mlock, 0, "proc_signstart", ((void*)0));
 }
 p->p_lflag |= P_LINTRANSIT;
 p->p_transholder = current_thread();
 if (locked == 0)
  proc_unlock(p);
 return 0;
}
