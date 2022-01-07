
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;


 int tcp_cc_cwnd_init_or_reset (struct tcpcb*) ;

void
tcp_newreno_cwnd_init_or_reset(struct tcpcb *tp) {
 tcp_cc_cwnd_init_or_reset(tp);
}
