
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int snd_cwnd; int t_maxseg; int snd_ssthresh; int bg_ssthresh; } ;


 int bg_ss_fltsz ;

void
tcp_ledbat_cwnd_init(struct tcpcb *tp) {
 tp->snd_cwnd = tp->t_maxseg * bg_ss_fltsz;
 tp->bg_ssthresh = tp->snd_ssthresh;
}
