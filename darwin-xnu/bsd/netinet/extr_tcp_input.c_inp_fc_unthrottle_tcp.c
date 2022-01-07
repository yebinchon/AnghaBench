
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_bytes_acked; int t_flagsext; int snd_ssthresh; int snd_cwnd; } ;
struct inpcb {struct tcpcb* inp_ppcb; } ;
struct TYPE_2__ {int (* pre_fr ) (struct tcpcb*) ;} ;


 TYPE_1__* CC_ALGO (struct tcpcb*) ;
 int TCP_RESET_REXMT_STATE (struct tcpcb*) ;
 int TF_CWND_NONVALIDATED ;
 int stub1 (struct tcpcb*) ;
 int tcp_output (struct tcpcb*) ;

void
inp_fc_unthrottle_tcp(struct inpcb *inp)
{
 struct tcpcb *tp = inp->inp_ppcb;




 if (CC_ALGO(tp)->pre_fr != ((void*)0))
  CC_ALGO(tp)->pre_fr(tp);

 tp->snd_cwnd = tp->snd_ssthresh;
 tp->t_flagsext &= ~TF_CWND_NONVALIDATED;




 tp->t_bytes_acked = 0;






 TCP_RESET_REXMT_STATE(tp);






 tcp_output(tp);
}
