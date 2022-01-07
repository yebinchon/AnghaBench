
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sd_iterargs {int signo; int setsdstate; int countproc; int activecount; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_6__ {int p_shutdownstate; scalar_t__ p_stat; int p_listflag; } ;


 int PROC_RETURNED ;
 int P_LIST_EXITCOUNT ;
 scalar_t__ SZOMB ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_lock (TYPE_1__*) ;
 int proc_shutdown_exitcount ;
 int proc_unlock (TYPE_1__*) ;
 int psignal (TYPE_1__*,int) ;

__attribute__((used)) static int
sd_callback1(proc_t p, void * args)
{
 struct sd_iterargs * sd = (struct sd_iterargs *)args;
 int signo = sd->signo;
 int setsdstate = sd->setsdstate;
 int countproc = sd->countproc;

 proc_lock(p);
 p->p_shutdownstate = setsdstate;
 if (p->p_stat != SZOMB) {
  proc_unlock(p);
  if (countproc != 0) {
   proc_list_lock();
   p->p_listflag |= P_LIST_EXITCOUNT;
   proc_shutdown_exitcount++;
   proc_list_unlock();
  }

  psignal(p, signo);
  if (countproc != 0)
   sd->activecount++;
 } else {
  proc_unlock(p);
 }

 return PROC_RETURNED;
}
