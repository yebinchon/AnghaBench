
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int snd_una; int t_notify_ack; } ;
struct tcp_notify_ack_marker {int notify_snd_una; } ;
struct socket {int dummy; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SEQ_GEQ (int ,int ) ;
 int SLIST_EMPTY (int *) ;
 struct tcp_notify_ack_marker* SLIST_FIRST (int *) ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (struct socket*) ;
 struct tcpcb* intotcpcb (int ) ;
 int sotoinpcb (struct socket*) ;

bool
tcp_notify_ack_active(struct socket *so)
{
 if ((SOCK_DOM(so) == PF_INET || SOCK_DOM(so) == PF_INET6) &&
     SOCK_TYPE(so) == SOCK_STREAM) {
  struct tcpcb *tp = intotcpcb(sotoinpcb(so));

  if (!SLIST_EMPTY(&tp->t_notify_ack)) {
   struct tcp_notify_ack_marker *elm;
   elm = SLIST_FIRST(&tp->t_notify_ack);
   if (SEQ_GEQ(tp->snd_una, elm->notify_snd_una))
    return (1);
  }
 }
 return (0);
}
