
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int32_t ;
struct tcpcb {scalar_t__ snd_ssthresh; scalar_t__ t_maxseg; TYPE_1__* t_ccstate; int snd_wnd; int snd_cwnd; } ;
struct TYPE_2__ {scalar_t__ cub_last_max; int cub_epoch_start; float cub_epoch_period; scalar_t__ cub_origin_point; scalar_t__ cub_target_win; } ;


 float TCP_RETRANSHZ ;
 int VERIFY (int) ;
 float cbrtf (float) ;
 scalar_t__ current_task () ;
 scalar_t__ kernel_task ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (int ,int ) ;
 scalar_t__ tcp_cubic_coeff ;
 scalar_t__ tcp_cubic_use_minrtt ;
 int tcp_now ;
 scalar_t__ timer_diff (int,int ,int,int ) ;

__attribute__((used)) static uint32_t
tcp_cubic_update(struct tcpcb *tp, u_int32_t rtt)
{
 float K, var;
 u_int32_t elapsed_time, win;

 win = min(tp->snd_cwnd, tp->snd_wnd);
 if (tp->t_ccstate->cub_last_max == 0)
  tp->t_ccstate->cub_last_max = tp->snd_ssthresh;

 if (tp->t_ccstate->cub_epoch_start == 0) {





  tp->t_ccstate->cub_epoch_start = tcp_now;
  if (tp->t_ccstate->cub_epoch_start == 0)
   tp->t_ccstate->cub_epoch_start = 1;
  if (win < tp->t_ccstate->cub_last_max) {

   VERIFY(current_task() == kernel_task);






   K = (tp->t_ccstate->cub_last_max - win)
       / tp->t_maxseg / tcp_cubic_coeff;
   K = cbrtf(K);
   tp->t_ccstate->cub_epoch_period = K * TCP_RETRANSHZ;

   tp->t_ccstate->cub_origin_point =
    tp->t_ccstate->cub_last_max;
  } else {
   tp->t_ccstate->cub_epoch_period = 0;
   tp->t_ccstate->cub_origin_point = win;
  }
  tp->t_ccstate->cub_target_win = 0;
 }

 VERIFY(tp->t_ccstate->cub_origin_point > 0);




 elapsed_time = timer_diff(tcp_now, 0,
  tp->t_ccstate->cub_epoch_start, 0);

 if (tcp_cubic_use_minrtt)
  elapsed_time += max(tcp_cubic_use_minrtt, rtt);
 else
  elapsed_time += rtt;
 var = (elapsed_time - tp->t_ccstate->cub_epoch_period) / TCP_RETRANSHZ;
 var = var * var * var * (tcp_cubic_coeff * tp->t_maxseg);

 tp->t_ccstate->cub_target_win = (u_int32_t)(tp->t_ccstate->cub_origin_point + var);
 return (tp->t_ccstate->cub_target_win);
}
