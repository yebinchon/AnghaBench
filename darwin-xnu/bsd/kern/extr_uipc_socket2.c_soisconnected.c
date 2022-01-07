
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_state; int so_timeo; int so_incqlen; int so_comp; int so_incomp; struct socket* so_head; TYPE_1__* so_proto; } ;
typedef int caddr_t ;
struct TYPE_2__ {int * pr_getlock; } ;


 int EV_RCONN ;
 int EV_WCONN ;
 int SO_FILT_HINT_CONNECTED ;
 int SO_FILT_HINT_CONNINFO_UPDATED ;
 int SO_FILT_HINT_LOCKED ;
 int SS_COMP ;
 int SS_INCOMP ;
 int SS_ISCONFIRMING ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;
 int TAILQ_INSERT_TAIL (int *,struct socket*,int ) ;
 int TAILQ_REMOVE (int *,struct socket*,int ) ;
 int postevent (struct socket*,int ,int ) ;
 int sflt_notify (struct socket*,int ,int *) ;
 int so_acquire_accept_list (struct socket*,struct socket*) ;
 int so_list ;
 int so_release_accept_list (struct socket*) ;
 int sock_evt_connected ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soevent (struct socket*,int) ;
 int soreserve_preconnect (struct socket*,int ) ;
 int sorwakeup (struct socket*) ;
 int sowwakeup (struct socket*) ;
 int wakeup (int ) ;
 int wakeup_one (int ) ;

void
soisconnected(struct socket *so)
{
 so->so_state &= ~(SS_ISCONNECTING|SS_ISDISCONNECTING|SS_ISCONFIRMING);
 so->so_state |= SS_ISCONNECTED;

 soreserve_preconnect(so, 0);

 sflt_notify(so, sock_evt_connected, ((void*)0));

 if (so->so_head != ((void*)0) && (so->so_state & SS_INCOMP)) {
  struct socket *head = so->so_head;
  int locked = 0;




  if (head->so_proto->pr_getlock != ((void*)0)) {
   socket_lock(head, 1);
   so_acquire_accept_list(head, so);
   locked = 1;
  }
  if (so->so_head == head && (so->so_state & SS_INCOMP)) {
   so->so_state &= ~SS_INCOMP;
   so->so_state |= SS_COMP;
   TAILQ_REMOVE(&head->so_incomp, so, so_list);
   TAILQ_INSERT_TAIL(&head->so_comp, so, so_list);
   head->so_incqlen--;





   if (locked != 0) {
    so_release_accept_list(head);
    socket_unlock(so, 0);
   }
   postevent(head, 0, EV_RCONN);
   sorwakeup(head);
   wakeup_one((caddr_t)&head->so_timeo);

   if (locked != 0) {
    socket_unlock(head, 1);
    socket_lock(so, 0);
   }
  } else if (locked != 0) {
   so_release_accept_list(head);
   socket_unlock(head, 1);
  }
 } else {
  postevent(so, 0, EV_WCONN);
  wakeup((caddr_t)&so->so_timeo);
  sorwakeup(so);
  sowwakeup(so);
  soevent(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_CONNECTED |
      SO_FILT_HINT_CONNINFO_UPDATED);
 }
}
