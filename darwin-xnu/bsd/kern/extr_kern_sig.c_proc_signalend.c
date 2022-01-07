
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {scalar_t__ p_sigwaitcnt; int * p_signalholder; int p_sigmask; int p_lflag; } ;


 int P_LINSIGNAL ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int wakeup (int *) ;

void
proc_signalend(proc_t p, int locked)
{
 if (!locked)
  proc_lock(p);
 p->p_lflag &= ~P_LINSIGNAL;

 if (p->p_sigwaitcnt > 0)
  wakeup(&p->p_sigmask);

 p->p_signalholder = ((void*)0);
 if (!locked)
  proc_unlock(p);
}
