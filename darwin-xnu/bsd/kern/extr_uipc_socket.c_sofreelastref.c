
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sb_flags; int sb_sel; } ;
struct TYPE_5__ {int sb_flags; int sb_sel; } ;
struct socket {int so_flags; int so_state; void* so_event; TYPE_3__ so_snd; TYPE_2__ so_rcv; TYPE_1__* so_proto; struct socket* so_head; int so_qlen; int so_incqlen; int so_incomp; } ;
struct TYPE_4__ {int * pr_getlock; } ;


 int SB_SEL ;
 int SB_SNDBYTE_CNT ;
 int SB_UPCALL ;
 int SOF_FLOW_DIVERT ;
 int SOF_PCBCLEARING ;
 int SS_COMP ;
 int SS_INCOMP ;
 int SS_NOFDREF ;
 int TAILQ_REMOVE (int *,struct socket*,int ) ;
 int flow_divert_detach (struct socket*) ;
 int printf (char*) ;
 int selthreadclear (int *) ;
 int so_acquire_accept_list (struct socket*,struct socket*) ;
 int so_list ;
 int so_release_accept_list (struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int sodealloc (struct socket*) ;
 void* sonullevent ;
 int sorflush (struct socket*) ;
 int sowflush (struct socket*) ;

void
sofreelastref(struct socket *so, int dealloc)
{
 struct socket *head = so->so_head;



 if (!(so->so_flags & SOF_PCBCLEARING) || !(so->so_state & SS_NOFDREF)) {
  selthreadclear(&so->so_snd.sb_sel);
  selthreadclear(&so->so_rcv.sb_sel);
  so->so_rcv.sb_flags &= ~(SB_SEL|SB_UPCALL);
  so->so_snd.sb_flags &= ~(SB_SEL|SB_UPCALL);
  so->so_event = sonullevent;
  return;
 }
 if (head != ((void*)0)) {




  if (head->so_proto->pr_getlock != ((void*)0)) {
   socket_lock(head, 1);
   so_acquire_accept_list(head, so);
  }
  if (so->so_state & SS_INCOMP) {
   so->so_state &= ~SS_INCOMP;
   TAILQ_REMOVE(&head->so_incomp, so, so_list);
   head->so_incqlen--;
   head->so_qlen--;
   so->so_head = ((void*)0);

   if (head->so_proto->pr_getlock != ((void*)0)) {
    so_release_accept_list(head);
    socket_unlock(head, 1);
   }
  } else if (so->so_state & SS_COMP) {
   if (head->so_proto->pr_getlock != ((void*)0)) {
    so_release_accept_list(head);
    socket_unlock(head, 1);
   }






   selthreadclear(&so->so_snd.sb_sel);
   selthreadclear(&so->so_rcv.sb_sel);
   so->so_rcv.sb_flags &= ~(SB_SEL|SB_UPCALL);
   so->so_snd.sb_flags &= ~(SB_SEL|SB_UPCALL);
   so->so_event = sonullevent;
   return;
  } else {
   if (head->so_proto->pr_getlock != ((void*)0)) {
    so_release_accept_list(head);
   socket_unlock(head, 1);
 }
   printf("sofree: not queued\n");
  }
 }
 sowflush(so);
 sorflush(so);
 so->so_rcv.sb_flags &= ~SB_UPCALL;
 so->so_snd.sb_flags &= ~(SB_UPCALL|SB_SNDBYTE_CNT);
 so->so_event = sonullevent;

 if (dealloc)
  sodealloc(so);
}
