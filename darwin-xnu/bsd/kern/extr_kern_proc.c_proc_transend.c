
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_lflag; int * p_transholder; } ;


 int P_LINTRANSIT ;
 int P_LTRANSCOMMIT ;
 int P_LTRANSWAIT ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int wakeup (int*) ;

void
proc_transend(proc_t p, int locked)
{
 if (locked == 0)
  proc_lock(p);

 p->p_lflag &= ~( P_LINTRANSIT | P_LTRANSCOMMIT);
 p->p_transholder = ((void*)0);

 if ((p->p_lflag & P_LTRANSWAIT) == P_LTRANSWAIT) {
  p->p_lflag &= ~P_LTRANSWAIT;
  wakeup(&p->p_lflag);
 }
 if (locked == 0)
  proc_unlock(p);
}
