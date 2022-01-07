
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_state; } ;
struct inpcb {int dummy; } ;


 scalar_t__ TCPS_SYN_SENT ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int tcp_drop (struct tcpcb*,int) ;

void
tcp_drop_syn_sent(struct inpcb *inp, int errno)
{
 struct tcpcb *tp = intotcpcb(inp);

 if (tp && tp->t_state == TCPS_SYN_SENT)
  tcp_drop(tp, errno);
}
