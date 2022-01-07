
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flags; int snd_cwnd; int t_maxseg; } ;


 int TCP_CC_CWND_INIT_BYTES ;
 int TF_LOCAL ;
 int max (int,int ) ;
 int min (int,int ) ;
 int ss_fltsz ;
 int ss_fltsz_local ;
 scalar_t__ tcp_do_rfc3390 ;

void
tcp_cc_cwnd_init_or_reset(struct tcpcb *tp)
{
 if (tp->t_flags & TF_LOCAL) {
  tp->snd_cwnd = tp->t_maxseg * ss_fltsz_local;
 } else {

  if (tcp_do_rfc3390)
   tp->snd_cwnd = min(4 * tp->t_maxseg,
    max(2 * tp->t_maxseg, TCP_CC_CWND_INIT_BYTES));
  else
   tp->snd_cwnd = tp->t_maxseg * ss_fltsz;
 }
}
