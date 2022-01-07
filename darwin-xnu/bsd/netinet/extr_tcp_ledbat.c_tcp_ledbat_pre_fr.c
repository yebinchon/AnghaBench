
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcpcb {int t_maxseg; int snd_ssthresh; int bg_ssthresh; int snd_cwnd; int snd_wnd; } ;


 int min (int ,int ) ;
 int tcp_cc_resize_sndbuf (struct tcpcb*) ;

void
tcp_ledbat_pre_fr(struct tcpcb *tp) {
 uint32_t win;

 win = min(tp->snd_wnd, tp->snd_cwnd) /
  2 / tp->t_maxseg;
 if ( win < 2 )
  win = 2;
 tp->snd_ssthresh = win * tp->t_maxseg;
 if (tp->bg_ssthresh > tp->snd_ssthresh)
  tp->bg_ssthresh = tp->snd_ssthresh;

 tcp_cc_resize_sndbuf(tp);
}
