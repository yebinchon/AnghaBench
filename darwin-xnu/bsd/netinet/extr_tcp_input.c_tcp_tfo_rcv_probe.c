
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int * t_timer; int t_tfo_probe_state; } ;


 int OFFSET_FROM_START (struct tcpcb*,int ) ;
 size_t TCPT_KEEP ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TFO_PROBE_PROBING ;

__attribute__((used)) static void
tcp_tfo_rcv_probe(struct tcpcb *tp, int tlen)
{
 if (tlen != 0)
  return;

 tp->t_tfo_probe_state = TFO_PROBE_PROBING;





 tp->t_timer[TCPT_KEEP] = OFFSET_FROM_START(tp, (TCP_REXMTVAL(tp)));
}
