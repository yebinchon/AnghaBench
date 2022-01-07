
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct tcpcb {int dummy; } ;


 int tcp_cc_delay_ack (struct tcpcb*,struct tcphdr*) ;

int
tcp_newreno_delay_ack(struct tcpcb *tp, struct tcphdr *th) {
 return (tcp_cc_delay_ack(tp, th));
}
