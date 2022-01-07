
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct tcphdr {int th_ack; } ;
struct tcpcb {int snd_max; scalar_t__ t_lossflightsize; int t_pipeack; int t_maxseg; int snd_ssthresh; int snd_cwnd; TYPE_1__* t_ccstate; } ;
struct TYPE_2__ {scalar_t__ cub_tcp_bytes_acked; scalar_t__ cub_target_win; scalar_t__ cub_tcp_win; } ;


 scalar_t__ SACK_ENABLED (struct tcpcb*) ;
 scalar_t__ SEQ_LEQ (int,int) ;
 void* max (int,int) ;
 int min (int,int) ;
 int tcp_rxtseg_total_size (struct tcpcb*) ;

__attribute__((used)) static void
tcp_cubic_post_fr(struct tcpcb *tp, struct tcphdr *th)
{
 uint32_t flight_size = 0;

 if (SEQ_LEQ(th->th_ack, tp->snd_max))
  flight_size = tp->snd_max - th->th_ack;

 if (SACK_ENABLED(tp) && tp->t_lossflightsize > 0) {
  u_int32_t total_rxt_size = 0, ncwnd;




  total_rxt_size = tcp_rxtseg_total_size(tp);
  ncwnd = max(tp->t_pipeack, tp->t_lossflightsize);
  if (total_rxt_size <= ncwnd) {
   ncwnd = ncwnd - total_rxt_size;
  }





  ncwnd = min(ncwnd, (tp->t_maxseg << 6));
  ncwnd = ncwnd >> 1;
  flight_size = max(ncwnd, flight_size);
 }
 if (flight_size < tp->snd_ssthresh)
  tp->snd_cwnd = max(flight_size, tp->t_maxseg)
    + tp->t_maxseg;
 else
  tp->snd_cwnd = tp->snd_ssthresh;
 tp->t_ccstate->cub_tcp_win = 0;
 tp->t_ccstate->cub_target_win = 0;
 tp->t_ccstate->cub_tcp_bytes_acked = 0;
}
