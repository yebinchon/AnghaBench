
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_lflag; scalar_t__ p_transholder; } ;


 int P_LINTRANSIT ;
 int P_LTRANSCOMMIT ;
 int P_LTRANSWAIT ;
 int assert (int) ;
 scalar_t__ current_thread () ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int wakeup (int*) ;

void
proc_transcommit(proc_t p, int locked)
{
 if (locked == 0)
  proc_lock(p);

 assert ((p->p_lflag & P_LINTRANSIT) == P_LINTRANSIT);
 assert (p->p_transholder == current_thread());
 p->p_lflag |= P_LTRANSCOMMIT;

 if ((p->p_lflag & P_LTRANSWAIT) == P_LTRANSWAIT) {
  p->p_lflag &= ~P_LTRANSWAIT;
  wakeup(&p->p_lflag);
 }
 if (locked == 0)
  proc_unlock(p);
}
