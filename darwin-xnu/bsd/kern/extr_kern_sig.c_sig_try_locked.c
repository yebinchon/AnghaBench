
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* proc_t ;
typedef int caddr_t ;
struct TYPE_4__ {int p_mlock; int sigwait_thread; scalar_t__ exit_thread; scalar_t__ sigwait; } ;


 int PCATCH ;
 int PDROP ;
 int current_thread () ;
 int msleep (int ,int *,int,int ,int ) ;
 int proc_lock (TYPE_1__*) ;
 scalar_t__ thread_should_abort (int ) ;

int
sig_try_locked(proc_t p)
{
 thread_t self = current_thread();

 while (p->sigwait || p->exit_thread) {
  if (p->exit_thread) {
   return(0);
  }
  msleep((caddr_t)&p->sigwait_thread, &p->p_mlock, PCATCH | PDROP, 0, 0);
  if (thread_should_abort(self)) {



   proc_lock(p);
   return -1;
  }
  proc_lock(p);
 }
 return 1;
}
