
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {scalar_t__ p_signalholder; int p_lflag; int p_sigwaitcnt; int p_mlock; int p_sigmask; } ;


 int P_LINSIGNAL ;
 scalar_t__ current_thread () ;
 int msleep (int *,int *,int ,char*,int *) ;
 int panic (char*) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

void
proc_signalstart(proc_t p, int locked)
{
 if (!locked)
  proc_lock(p);

 if(p->p_signalholder == current_thread())
  panic("proc_signalstart: thread attempting to signal a process for which it holds the signal lock");

 p->p_sigwaitcnt++;
 while ((p->p_lflag & P_LINSIGNAL) == P_LINSIGNAL)
  msleep(&p->p_sigmask, &p->p_mlock, 0, "proc_signstart", ((void*)0));
 p->p_sigwaitcnt--;

 p->p_lflag |= P_LINSIGNAL;
 p->p_signalholder = current_thread();
 if (!locked)
  proc_unlock(p);
}
