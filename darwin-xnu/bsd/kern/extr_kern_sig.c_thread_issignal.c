
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_t ;
struct uthread {int uu_siglist; int uu_sigmask; } ;
typedef int sigset_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_sigignore; } ;


 scalar_t__ get_bsdthread_info (int ) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

int
thread_issignal(proc_t p, thread_t th, sigset_t mask)
{
 struct uthread * uth;
 sigset_t bits=0;

 proc_lock(p);
 uth = (struct uthread *)get_bsdthread_info(th);
 if (uth) {
  bits = (((uth->uu_siglist & ~uth->uu_sigmask) & ~p->p_sigignore) & mask);
 }
 proc_unlock(p);
 return(bits);
}
