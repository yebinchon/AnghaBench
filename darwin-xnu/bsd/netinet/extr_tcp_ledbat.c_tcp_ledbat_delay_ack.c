
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int th_flags; } ;
struct tcpcb {int t_flags; int t_unacksegs; } ;


 int TF_RXWIN0SENT ;
 int TH_PUSH ;

int
tcp_ledbat_delay_ack(struct tcpcb *tp, struct tcphdr *th) {
 if ((tp->t_flags & TF_RXWIN0SENT) == 0 &&
  (th->th_flags & TH_PUSH) == 0 && (tp->t_unacksegs == 1))
  return(1);
 return(0);
}
