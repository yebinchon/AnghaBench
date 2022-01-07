
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct tcpopt {int to_flags; scalar_t__ to_tsecr; } ;
struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {scalar_t__ t_rtttime; scalar_t__ t_rtseq; scalar_t__ t_pipeack_lastuna; scalar_t__ t_pipeack; int t_pipeack_ind; scalar_t__* t_pipeack_sample; } ;


 scalar_t__ SEQ_GT (scalar_t__,scalar_t__) ;
 scalar_t__ TCP_CC_CWND_INIT_BYTES ;
 int TCP_PIPEACK_SAMPLE_COUNT ;
 int TOF_TS ;
 scalar_t__ TSTMP_GEQ (int,scalar_t__) ;
 int VERIFY (int) ;
 scalar_t__ tcp_get_max_pipeack (struct tcpcb*) ;
 int tcp_now ;
 int tcp_xmit_timer (struct tcpcb*,int,int,scalar_t__) ;

__attribute__((used)) static void
tcp_compute_rtt(struct tcpcb *tp, struct tcpopt *to, struct tcphdr *th)
{
 int rtt = 0;
 VERIFY(to != ((void*)0) && th != ((void*)0));
 if (tp->t_rtttime != 0 && SEQ_GT(th->th_ack, tp->t_rtseq)) {
  u_int32_t pipe_ack_val;
  rtt = tcp_now - tp->t_rtttime;




  if (SEQ_GT(th->th_ack, tp->t_pipeack_lastuna)) {
   pipe_ack_val = th->th_ack - tp->t_pipeack_lastuna;

   tp->t_pipeack_sample[tp->t_pipeack_ind++] =
       pipe_ack_val;
   tp->t_pipeack_ind %= TCP_PIPEACK_SAMPLE_COUNT;


   pipe_ack_val = tcp_get_max_pipeack(tp);
   tp->t_pipeack = (pipe_ack_val >
        TCP_CC_CWND_INIT_BYTES) ?
        pipe_ack_val : 0;
  }

  tp->t_rtttime = 0;
 }
 if (((to->to_flags & TOF_TS) != 0) &&
  (to->to_tsecr != 0) &&
  TSTMP_GEQ(tcp_now, to->to_tsecr)) {
  tcp_xmit_timer(tp, (tcp_now - to->to_tsecr),
   to->to_tsecr, th->th_ack);
 } else if (rtt > 0) {
  tcp_xmit_timer(tp, rtt, 0, th->th_ack);
 }
}
