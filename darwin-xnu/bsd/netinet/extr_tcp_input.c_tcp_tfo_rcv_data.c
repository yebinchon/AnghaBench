
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_tfo_probe_state; } ;


 scalar_t__ TFO_PROBE_NONE ;
 scalar_t__ TFO_PROBE_PROBING ;

__attribute__((used)) static void
tcp_tfo_rcv_data(struct tcpcb *tp)
{

 if (tp->t_tfo_probe_state >= TFO_PROBE_PROBING)
  tp->t_tfo_probe_state = TFO_PROBE_NONE;
}
