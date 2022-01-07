
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcpcb {int snd_ssthresh; TYPE_3__* t_ccstate; TYPE_2__* t_inpcb; scalar_t__ t_bytes_acked; scalar_t__ t_pipeack; } ;
struct TYPE_6__ {int cub_last_max; } ;
struct TYPE_5__ {TYPE_1__* inp_stat; } ;
struct TYPE_4__ {scalar_t__ txbytes; } ;


 scalar_t__ TCP_CC_CWND_INIT_BYTES ;
 int TCP_MAXWIN ;
 int TCP_MAX_WINSHIFT ;
 int VERIFY (int ) ;
 int tcp_cc_cwnd_init_or_reset (struct tcpcb*) ;
 int tcp_clear_pipeack_state (struct tcpcb*) ;
 int tcp_cubic_clear_state (struct tcpcb*) ;

__attribute__((used)) static void tcp_cubic_cwnd_init_or_reset(struct tcpcb *tp)
{
 VERIFY(tp->t_ccstate != ((void*)0));

 tcp_cubic_clear_state(tp);
 tcp_cc_cwnd_init_or_reset(tp);
 tp->t_pipeack = 0;
 tcp_clear_pipeack_state(tp);


 tp->t_bytes_acked = 0;
 if (tp->t_inpcb->inp_stat->txbytes <= TCP_CC_CWND_INIT_BYTES
     && tp->snd_ssthresh < (TCP_MAXWIN << TCP_MAX_WINSHIFT))
  tp->snd_ssthresh = TCP_MAXWIN << TCP_MAX_WINSHIFT;


 tp->t_ccstate->cub_last_max = tp->snd_ssthresh;
}
