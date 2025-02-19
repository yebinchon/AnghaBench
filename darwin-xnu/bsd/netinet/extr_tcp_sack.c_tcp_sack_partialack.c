
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {scalar_t__ th_ack; } ;
struct TYPE_2__ {scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {int t_maxseg; scalar_t__ snd_cwnd; scalar_t__ snd_nxt; scalar_t__ sack_newdata; scalar_t__ snd_ssthresh; scalar_t__ snd_fack; scalar_t__ snd_recover; int snd_holes; TYPE_1__ sackhint; scalar_t__ t_rtttime; scalar_t__* t_timer; } ;
struct sackhole {int dummy; } ;


 int BYTES_ACKED (struct tcphdr*,struct tcpcb*) ;
 scalar_t__ SEQ_LT (scalar_t__,scalar_t__) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 size_t TCPT_REXMT ;
 int tcp_output (struct tcpcb*) ;
 struct sackhole* tcp_sackhole_insert (struct tcpcb*,scalar_t__,scalar_t__,int *) ;

void
tcp_sack_partialack(struct tcpcb *tp, struct tcphdr *th)
{
 int num_segs = 1;

 tp->t_timer[TCPT_REXMT] = 0;
 tp->t_rtttime = 0;

 if (((BYTES_ACKED(th, tp)) / tp->t_maxseg) > 2)
  num_segs = 2;
 tp->snd_cwnd = (tp->sackhint.sack_bytes_rexmit +
  (tp->snd_nxt - tp->sack_newdata) +
  num_segs * tp->t_maxseg);
 if (tp->snd_cwnd > tp->snd_ssthresh)
  tp->snd_cwnd = tp->snd_ssthresh;
 if (SEQ_LT(tp->snd_fack, tp->snd_recover) &&
     tp->snd_fack == th->th_ack && TAILQ_EMPTY(&tp->snd_holes)) {
  struct sackhole *temp;






  temp = tcp_sackhole_insert(tp, tp->snd_fack,
      tp->snd_recover, ((void*)0));
  if (temp != ((void*)0))
   tp->snd_fack = tp->snd_recover;
 }
 (void) tcp_output(tp);
}
