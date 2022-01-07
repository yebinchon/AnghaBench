
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct tcpcb {int t_srtt_prev; int t_srtt; int t_rttvar_prev; int t_rttvar; int t_flagsext; int t_flags; int snd_recover; int snd_recover_prev; int snd_ssthresh; int snd_ssthresh_prev; int snd_cwnd; int snd_cwnd_prev; scalar_t__ snd_una; scalar_t__ snd_max; } ;


 scalar_t__ IN_FASTRECOVERY (struct tcpcb*) ;
 int TCP_RTTVAR_SHIFT ;
 int TCP_RTT_SHIFT ;
 int TF_RECOMPUTE_RTT ;
 int TF_WASFRECOVERY ;
 scalar_t__ TSTMP_SUPPORTED (struct tcpcb*) ;
 int max (scalar_t__,int ) ;

void
tcp_rexmt_save_state(struct tcpcb *tp)
{
 u_int32_t fsize;
 if (TSTMP_SUPPORTED(tp)) {




  fsize = tp->snd_max - tp->snd_una;
  tp->snd_ssthresh_prev = max(fsize, tp->snd_ssthresh);
  tp->snd_recover_prev = tp->snd_recover;
 } else {
  tp->snd_cwnd_prev = tp->snd_cwnd;
  tp->snd_ssthresh_prev = tp->snd_ssthresh;
  tp->snd_recover_prev = tp->snd_recover;
  if (IN_FASTRECOVERY(tp))
   tp->t_flags |= TF_WASFRECOVERY;
  else
   tp->t_flags &= ~TF_WASFRECOVERY;
 }
 tp->t_srtt_prev = (tp->t_srtt >> TCP_RTT_SHIFT) + 2;
 tp->t_rttvar_prev = (tp->t_rttvar >> TCP_RTTVAR_SHIFT);
 tp->t_flagsext &= ~(TF_RECOMPUTE_RTT);
}
