
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
struct selinfo {int si_flags; struct waitq si_waitq; } ;


 int SI_CLEAR ;
 int SI_COLL ;
 int SI_INITED ;
 int SI_RECORDED ;
 int selwakeup (struct selinfo*) ;
 int waitq_deinit (struct waitq*) ;

void
selthreadclear(struct selinfo *sip)
{
 struct waitq *wq;

 if ((sip->si_flags & SI_INITED) == 0) {
  return;
 }
 if (sip->si_flags & SI_RECORDED) {
   selwakeup(sip);
   sip->si_flags &= ~(SI_RECORDED | SI_COLL);
 }
 sip->si_flags |= SI_CLEAR;
 sip->si_flags &= ~SI_INITED;

 wq = &sip->si_waitq;
 waitq_deinit(wq);
}
