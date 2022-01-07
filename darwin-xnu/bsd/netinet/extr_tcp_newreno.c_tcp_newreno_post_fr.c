
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {scalar_t__ snd_max; scalar_t__ t_bytes_acked; scalar_t__ snd_ssthresh; scalar_t__ snd_cwnd; scalar_t__ t_maxseg; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ max (scalar_t__,scalar_t__) ;

void
tcp_newreno_post_fr(struct tcpcb *tp, struct tcphdr *th) {
 int32_t ss;

 ss = tp->snd_max - th->th_ack;
 if (ss < (int32_t)tp->snd_ssthresh)
  tp->snd_cwnd = max(ss, tp->t_maxseg) + tp->t_maxseg;
 else
  tp->snd_cwnd = tp->snd_ssthresh;
 tp->t_bytes_acked = 0;
}
