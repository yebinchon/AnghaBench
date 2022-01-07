
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcphdr {int dummy; } ;
struct tcpcb {scalar_t__ t_maxseg; TYPE_1__* t_ccstate; int snd_wnd; int snd_cwnd; } ;
struct TYPE_2__ {scalar_t__ cub_tcp_win; scalar_t__ cub_tcp_bytes_acked; } ;


 scalar_t__ BYTES_ACKED (struct tcphdr*,struct tcpcb*) ;
 scalar_t__ min (int ,int ) ;

__attribute__((used)) static uint32_t
tcp_cubic_tcpwin(struct tcpcb *tp, struct tcphdr *th)
{
 if (tp->t_ccstate->cub_tcp_win == 0) {
  tp->t_ccstate->cub_tcp_win = min(tp->snd_cwnd, tp->snd_wnd);
  tp->t_ccstate->cub_tcp_bytes_acked = 0;
 } else {
  tp->t_ccstate->cub_tcp_bytes_acked +=
      BYTES_ACKED(th, tp);
  if (tp->t_ccstate->cub_tcp_bytes_acked >=
      tp->t_ccstate->cub_tcp_win) {
   tp->t_ccstate->cub_tcp_bytes_acked -=
       tp->t_ccstate->cub_tcp_win;
   tp->t_ccstate->cub_tcp_win += tp->t_maxseg;
  }
 }
 return (tp->t_ccstate->cub_tcp_win);
}
