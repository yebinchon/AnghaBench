
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tcptimerlist {int mtx; int entries; TYPE_3__* next_te; } ;
struct TYPE_7__ {int * le_prev; int * le_next; } ;
struct TYPE_8__ {TYPE_2__ le; } ;
struct tcpcb {TYPE_3__ tentry; int t_flags; TYPE_1__* t_inpcb; } ;
struct TYPE_6__ {int inp_socket; } ;


 TYPE_3__* LIST_NEXT (TYPE_3__*,int ) ;
 int LIST_REMOVE (TYPE_3__*,int ) ;
 int TF_TIMER_ONLIST ;
 int TIMER_IS_ON_LIST (struct tcpcb*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int le ;
 int socket_lock_assert_owned (int ) ;
 struct tcptimerlist tcp_timer_list ;

void
tcp_remove_timer(struct tcpcb *tp)
{
 struct tcptimerlist *listp = &tcp_timer_list;

 socket_lock_assert_owned(tp->t_inpcb->inp_socket);
 if (!(TIMER_IS_ON_LIST(tp))) {
  return;
 }
 lck_mtx_lock(listp->mtx);


 if (!(TIMER_IS_ON_LIST(tp))) {
  lck_mtx_unlock(listp->mtx);
  return;
 }

 if (listp->next_te != ((void*)0) && listp->next_te == &tp->tentry)
  listp->next_te = LIST_NEXT(&tp->tentry, le);

 LIST_REMOVE(&tp->tentry, le);
 tp->t_flags &= ~(TF_TIMER_ONLIST);

 listp->entries--;

 tp->tentry.le.le_next = ((void*)0);
 tp->tentry.le.le_prev = ((void*)0);
 lck_mtx_unlock(listp->mtx);
}
