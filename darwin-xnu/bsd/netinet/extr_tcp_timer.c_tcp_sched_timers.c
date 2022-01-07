
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct tcptimerlist {scalar_t__ entries; scalar_t__ maxentries; scalar_t__ pref_mode; scalar_t__ pref_offset; scalar_t__ mode; int mtx; scalar_t__ idleruns; int runtime; scalar_t__ scheduled; scalar_t__ running; int lhead; } ;
struct tcptimerentry {scalar_t__ index; scalar_t__ mode; int runtime; } ;
struct tcpcb {int t_flags; TYPE_1__* t_inpcb; struct tcptimerentry tentry; } ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ inp_state; } ;


 scalar_t__ FALSE ;
 scalar_t__ INPCB_STATE_DEAD ;
 int LIST_INSERT_HEAD (int *,struct tcptimerentry*,int ) ;
 scalar_t__ TCPT_NONE ;
 scalar_t__ TCP_TIMERLIST_100MS_MODE ;
 scalar_t__ TCP_TIMERLIST_10MS_MODE ;
 int TCP_TIMER_100MS_QUANTUM ;
 int TCP_TIMER_10MS_QUANTUM ;
 int TF_TIMER_ONLIST ;
 scalar_t__ TIMER_IS_ON_LIST (struct tcpcb*) ;
 scalar_t__ TRUE ;
 int VERIFY_NEXT_LINK (struct tcptimerentry*,int ) ;
 int VERIFY_PREV_LINK (struct tcptimerentry*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int le ;
 scalar_t__ min (scalar_t__,int ) ;
 scalar_t__ need_to_resched_timerlist (int ,scalar_t__) ;
 int tcp_now ;
 int tcp_remove_timer (struct tcpcb*) ;
 int tcp_resched_timerlist ;
 int tcp_sched_timerlist (scalar_t__) ;
 int tcp_timer_advanced ;
 struct tcptimerlist tcp_timer_list ;
 scalar_t__ timer_diff (int ,int ,int ,scalar_t__) ;

void
tcp_sched_timers(struct tcpcb *tp)
{
 struct tcptimerentry *te = &tp->tentry;
 u_int16_t index = te->index;
 u_int16_t mode = te->mode;
 struct tcptimerlist *listp = &tcp_timer_list;
 int32_t offset = 0;
 boolean_t list_locked = FALSE;

 if (tp->t_inpcb->inp_state == INPCB_STATE_DEAD) {

  if (TIMER_IS_ON_LIST(tp)) {
   tcp_remove_timer(tp);
  }
  return;
 }

 if (index == TCPT_NONE) {

  tcp_remove_timer(tp);
  return;
 }





 offset = timer_diff(te->runtime, 0, tcp_now, 0);
 if (offset <= 0) {
  offset = 1;
  tcp_timer_advanced++;
 }

 if (!TIMER_IS_ON_LIST(tp)) {
  if (!list_locked) {
   lck_mtx_lock(listp->mtx);
   list_locked = TRUE;
  }

  if (!TIMER_IS_ON_LIST(tp)) {
   LIST_INSERT_HEAD(&listp->lhead, te, le);
   tp->t_flags |= TF_TIMER_ONLIST;

   listp->entries++;
   if (listp->entries > listp->maxentries)
    listp->maxentries = listp->entries;


   if (!listp->scheduled)
    goto schedule;
  }
 }





 if (need_to_resched_timerlist(te->runtime, mode)) {
  tcp_resched_timerlist++;

  if (!list_locked) {
   lck_mtx_lock(listp->mtx);
   list_locked = TRUE;
  }

  VERIFY_NEXT_LINK(te, le);
  VERIFY_PREV_LINK(te, le);

  if (listp->running) {
   listp->pref_mode |= mode;
   if (listp->pref_offset == 0 ||
    offset < listp->pref_offset) {
    listp->pref_offset = offset;
   }
  } else {




   if (listp->scheduled) {
    int32_t diff;
    diff = timer_diff(listp->runtime, 0,
        tcp_now, offset);
    if (diff <= 0)
     goto done;
    else
     goto schedule;
   } else {
    goto schedule;
   }
  }
 }
 goto done;

schedule:





 if (mode & TCP_TIMERLIST_10MS_MODE) {
  listp->mode = TCP_TIMERLIST_10MS_MODE;
  listp->idleruns = 0;
  offset = min(offset, TCP_TIMER_10MS_QUANTUM);
 } else if (mode & TCP_TIMERLIST_100MS_MODE) {
  if (listp->mode > TCP_TIMERLIST_100MS_MODE)
   listp->mode = TCP_TIMERLIST_100MS_MODE;
  listp->idleruns = 0;
  offset = min(offset, TCP_TIMER_100MS_QUANTUM);
 }
 tcp_sched_timerlist(offset);

done:
 if (list_locked)
  lck_mtx_unlock(listp->mtx);

 return;
}
