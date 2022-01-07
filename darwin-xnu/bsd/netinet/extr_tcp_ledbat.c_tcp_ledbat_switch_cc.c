
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tcpcb {scalar_t__ bg_ssthresh; scalar_t__ snd_ssthresh; scalar_t__ snd_cwnd; int t_maxseg; scalar_t__ t_bytes_acked; int snd_wnd; } ;
struct TYPE_2__ {int num_sockets; } ;
typedef int SInt32 ;


 int OSIncrementAtomic (int volatile*) ;
 int bg_ss_fltsz ;
 int min (int ,scalar_t__) ;
 TYPE_1__ tcp_cc_ledbat ;

void
tcp_ledbat_switch_cc(struct tcpcb *tp, uint16_t old_cc_index) {
#pragma unused(old_cc_index)
 uint32_t cwnd;

 if (tp->bg_ssthresh == 0 || tp->bg_ssthresh > tp->snd_ssthresh)
  tp->bg_ssthresh = tp->snd_ssthresh;

 cwnd = min(tp->snd_wnd, tp->snd_cwnd);

 if (tp->snd_cwnd > tp->bg_ssthresh)
  cwnd = cwnd / tp->t_maxseg;
 else
  cwnd = cwnd / 2 / tp->t_maxseg;

 if (cwnd < bg_ss_fltsz)
  cwnd = bg_ss_fltsz;

 tp->snd_cwnd = cwnd * tp->t_maxseg;
 tp->t_bytes_acked = 0;

 OSIncrementAtomic((volatile SInt32 *)&tcp_cc_ledbat.num_sockets);
}
