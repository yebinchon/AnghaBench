
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {int t_flags; scalar_t__ t_rtttime; int t_badrexmt_time; int t_flagsext; scalar_t__ snd_max; scalar_t__ snd_nxt; int snd_recover_prev; int snd_recover; scalar_t__ snd_cwnd; scalar_t__ t_lossflightsize; int snd_ssthresh_prev; int snd_ssthresh; scalar_t__ snd_cwnd_prev; } ;
struct TYPE_2__ {int (* cwnd_init ) (struct tcpcb*) ;} ;


 scalar_t__ BYTES_ACKED (struct tcphdr*,struct tcpcb*) ;
 TYPE_1__* CC_ALGO (struct tcpcb*) ;
 int ENTER_FASTRECOVERY (struct tcpcb*) ;
 int TCP_CC_CWND_INIT_BYTES ;
 int TF_RECOMPUTE_RTT ;
 int TF_WASFRECOVERY ;
 scalar_t__ TSTMP_SUPPORTED (struct tcpcb*) ;
 scalar_t__ max (scalar_t__,int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int stub1 (struct tcpcb*) ;
 int tcp_bad_rexmt_fix_sndbuf (struct tcpcb*) ;
 int tcp_now ;

__attribute__((used)) static void
tcp_bad_rexmt_restore_state(struct tcpcb *tp, struct tcphdr *th)
{
 if (TSTMP_SUPPORTED(tp)) {
  u_int32_t fsize, acked;
  fsize = tp->snd_max - th->th_ack;
  acked = BYTES_ACKED(th, tp);





  tp->snd_ssthresh = tp->snd_ssthresh_prev;


  if (CC_ALGO(tp)->cwnd_init != ((void*)0))
   CC_ALGO(tp)->cwnd_init(tp);

  tp->snd_cwnd = fsize + min(acked, tp->snd_cwnd);

 } else {
  tp->snd_cwnd = tp->snd_cwnd_prev;
  tp->snd_ssthresh = tp->snd_ssthresh_prev;
  if (tp->t_flags & TF_WASFRECOVERY)
   ENTER_FASTRECOVERY(tp);


  tp->t_lossflightsize = 0;
 }
 tp->snd_cwnd = max(tp->snd_cwnd, TCP_CC_CWND_INIT_BYTES);
 tp->snd_recover = tp->snd_recover_prev;
 tp->snd_nxt = tp->snd_max;


 tcp_bad_rexmt_fix_sndbuf(tp);
 tp->t_flagsext |= TF_RECOMPUTE_RTT;
 tp->t_badrexmt_time = tcp_now;
 tp->t_rtttime = 0;
}
