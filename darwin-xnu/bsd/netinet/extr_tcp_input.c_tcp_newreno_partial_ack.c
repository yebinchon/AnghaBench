
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int tcp_seq ;
struct tcphdr {int th_ack; } ;
struct tcpcb {scalar_t__ t_maxseg; scalar_t__ snd_cwnd; int snd_nxt; int t_flags; scalar_t__ t_rtttime; scalar_t__* t_timer; } ;


 scalar_t__ BYTES_ACKED (struct tcphdr*,struct tcpcb*) ;
 scalar_t__ SEQ_GT (int ,int ) ;
 size_t TCPT_PTO ;
 size_t TCPT_REXMT ;
 int TF_ACKNOW ;
 int tcp_output (struct tcpcb*) ;

__attribute__((used)) static void
tcp_newreno_partial_ack(struct tcpcb *tp, struct tcphdr *th)
{
  tcp_seq onxt = tp->snd_nxt;
  u_int32_t ocwnd = tp->snd_cwnd;
  tp->t_timer[TCPT_REXMT] = 0;
  tp->t_timer[TCPT_PTO] = 0;
  tp->t_rtttime = 0;
  tp->snd_nxt = th->th_ack;





  tp->snd_cwnd = tp->t_maxseg + BYTES_ACKED(th, tp);
  tp->t_flags |= TF_ACKNOW;
  (void) tcp_output(tp);
  tp->snd_cwnd = ocwnd;
  if (SEQ_GT(onxt, tp->snd_nxt))
   tp->snd_nxt = onxt;




  if (tp->snd_cwnd > BYTES_ACKED(th, tp))
   tp->snd_cwnd -= BYTES_ACKED(th, tp);
  else
   tp->snd_cwnd = 0;
  tp->snd_cwnd += tp->t_maxseg;
}
