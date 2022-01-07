
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinfo {int si_flags; int si_waitq; } ;


 int NO_EVENT64 ;
 int SI_COLL ;
 int SI_INITED ;
 int SI_RECORDED ;
 int THREAD_AWAKENED ;
 int WAITQ_ALL_PRIORITIES ;
 int nselcoll ;
 int waitq_wakeup64_all (int *,int ,int ,int ) ;

void
selwakeup(struct selinfo *sip)
{

 if ((sip->si_flags & SI_INITED) == 0) {
  return;
 }

 if (sip->si_flags & SI_COLL) {
  nselcoll++;
  sip->si_flags &= ~SI_COLL;




 }

 if (sip->si_flags & SI_RECORDED) {
  waitq_wakeup64_all(&sip->si_waitq, NO_EVENT64,
       THREAD_AWAKENED, WAITQ_ALL_PRIORITIES);
  sip->si_flags &= ~SI_RECORDED;
 }

}
