
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int snd_una; int t_notify_ack; } ;
struct tcp_notify_ack_marker {int notify_snd_una; } ;
struct socket {int dummy; } ;


 scalar_t__ SEQ_GEQ (int ,int ) ;
 struct tcp_notify_ack_marker* SLIST_FIRST (int *) ;
 int SO_FILT_HINT_LOCKED ;
 int SO_FILT_HINT_NOTIFY_ACK ;
 int soevent (struct socket*,int) ;

inline void
tcp_notify_acknowledgement(struct tcpcb *tp, struct socket *so)
{
 struct tcp_notify_ack_marker *elm;

 elm = SLIST_FIRST(&tp->t_notify_ack);
 if (SEQ_GEQ(tp->snd_una, elm->notify_snd_una)) {
  soevent(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_NOTIFY_ACK);
 }
}
