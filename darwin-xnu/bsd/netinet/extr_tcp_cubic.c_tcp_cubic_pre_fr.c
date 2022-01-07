
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct tcpcb {int t_flagsext; int t_lossflightsize; int snd_max; int snd_una; int t_maxseg; int snd_ssthresh; TYPE_1__* t_ccstate; int t_pipeack; int snd_wnd; int snd_cwnd; } ;
typedef int int32_t ;
struct TYPE_2__ {int cub_last_max; int cub_avg_lastmax; int cub_mean_dev; scalar_t__ cub_tcp_bytes_acked; scalar_t__ cub_target_win; scalar_t__ cub_tcp_win; scalar_t__ cub_epoch_start; } ;


 int TF_CWND_NONVALIDATED ;
 int max (int ,int) ;
 int min (int ,int ) ;
 int tcp_cc_resize_sndbuf (struct tcpcb*) ;
 int tcp_cubic_backoff ;
 int tcp_cubic_fast_convergence ;
 int tcp_cubic_fast_convergence_factor ;

__attribute__((used)) static void
tcp_cubic_pre_fr(struct tcpcb *tp)
{
 u_int32_t win, avg;
 int32_t dev;
 tp->t_ccstate->cub_epoch_start = 0;
 tp->t_ccstate->cub_tcp_win = 0;
 tp->t_ccstate->cub_target_win = 0;
 tp->t_ccstate->cub_tcp_bytes_acked = 0;

 win = min(tp->snd_cwnd, tp->snd_wnd);
 if (tp->t_flagsext & TF_CWND_NONVALIDATED) {
  tp->t_lossflightsize = tp->snd_max - tp->snd_una;
  win = (max(tp->t_pipeack, tp->t_lossflightsize)) >> 1;
 } else {
  tp->t_lossflightsize = 0;
 }
 if (win < tp->t_ccstate->cub_last_max &&
  tcp_cubic_fast_convergence == 1)
  tp->t_ccstate->cub_last_max = (u_int32_t)(win *
   tcp_cubic_fast_convergence_factor);
 else
  tp->t_ccstate->cub_last_max = win;

 if (tp->t_ccstate->cub_last_max == 0) {





  tp->t_ccstate->cub_last_max = tp->snd_max - tp->snd_una;
 }





 if (tp->t_ccstate->cub_avg_lastmax == 0) {
  tp->t_ccstate->cub_avg_lastmax = tp->t_ccstate->cub_last_max;
 } else {




  avg = tp->t_ccstate->cub_avg_lastmax;
  avg = (avg << 6) - avg;
  tp->t_ccstate->cub_avg_lastmax =
      (avg + tp->t_ccstate->cub_last_max) >> 6;
 }


 dev = tp->t_ccstate->cub_avg_lastmax - tp->t_ccstate->cub_last_max;


 if (dev < 0)
  dev = -dev;

 if (tp->t_ccstate->cub_mean_dev == 0) {
  tp->t_ccstate->cub_mean_dev = dev;
 } else {
  dev = dev + ((tp->t_ccstate->cub_mean_dev << 4)
      - tp->t_ccstate->cub_mean_dev);
  tp->t_ccstate->cub_mean_dev = dev >> 4;
 }


 win = (u_int32_t)(win - (win * tcp_cubic_backoff));
 win = (win / tp->t_maxseg);
 if (win < 2)
  win = 2;
 tp->snd_ssthresh = win * tp->t_maxseg;
 tcp_cc_resize_sndbuf(tp);
}
