
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ th_seq; } ;
struct tcpcb {scalar_t__ t_tfo_probe_state; scalar_t__ t_tfo_probes; scalar_t__ rcv_nxt; int * t_timer; } ;


 int OFFSET_FROM_START (struct tcpcb*,int ) ;
 scalar_t__ SEQ_GT (scalar_t__,scalar_t__) ;
 size_t TCPT_KEEP ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 scalar_t__ TFO_PROBE_NONE ;
 scalar_t__ TFO_PROBE_PROBING ;
 scalar_t__ TFO_PROBE_WAIT_DATA ;

__attribute__((used)) static void
tcp_tfo_rcv_ack(struct tcpcb *tp, struct tcphdr *th)
{
 if (tp->t_tfo_probe_state == TFO_PROBE_PROBING &&
     tp->t_tfo_probes > 0) {
  if (th->th_seq == tp->rcv_nxt) {

   tp->t_tfo_probe_state = TFO_PROBE_NONE;
  } else if (SEQ_GT(th->th_seq, tp->rcv_nxt)) {

   tp->t_tfo_probe_state = TFO_PROBE_WAIT_DATA;
   tp->t_timer[TCPT_KEEP] = OFFSET_FROM_START(tp,
       TCP_REXMTVAL(tp));
  }
 }
}
