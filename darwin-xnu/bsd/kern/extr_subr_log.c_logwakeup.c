
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msgbuf {int dummy; } ;
typedef int caddr_t ;
struct TYPE_2__ {int sc_state; int sc_pgid; int sc_selp; struct msgbuf* sc_mbp; } ;


 scalar_t__ FALSE ;
 int LOG_ASYNC ;
 int LOG_LOCK () ;
 int LOG_RDWAIT ;
 int LOG_UNLOCK () ;
 int SIGIO ;
 int gsignal (int,int ) ;
 int log_open ;
 TYPE_1__ logsoftc ;
 scalar_t__ oslog_is_safe () ;
 int proc_signal (int,int ) ;
 int selwakeup (int *) ;
 int wakeup (int ) ;

void
logwakeup(struct msgbuf *mbp)
{

 if (oslog_is_safe() == FALSE) {
  return;
 }

 LOG_LOCK();
 if (!log_open) {
  LOG_UNLOCK();
  return;
 }
 if (((void*)0) == mbp)
  mbp = logsoftc.sc_mbp;
 if (mbp != logsoftc.sc_mbp)
  goto out;
 selwakeup(&logsoftc.sc_selp);
 if (logsoftc.sc_state & LOG_ASYNC) {
  int pgid = logsoftc.sc_pgid;
  LOG_UNLOCK();
  if (pgid < 0)
   gsignal(-pgid, SIGIO);
  else
   proc_signal(pgid, SIGIO);
  LOG_LOCK();
 }
 if (logsoftc.sc_state & LOG_RDWAIT) {
  wakeup((caddr_t)mbp);
  logsoftc.sc_state &= ~LOG_RDWAIT;
 }
out:
 LOG_UNLOCK();
}
