
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tcpcb {int t_maxseg; scalar_t__ t_bytes_acked; int snd_cwnd; int snd_ssthresh; int snd_wnd; } ;
struct TYPE_2__ {int num_sockets; } ;
typedef int SInt32 ;


 int OSIncrementAtomic (int volatile*) ;
 int TCP_CC_CWND_INIT_BYTES ;
 int max (int ,int) ;
 int min (int ,int ) ;
 TYPE_1__ tcp_cc_newreno ;

void
tcp_newreno_switch_cc(struct tcpcb *tp, uint16_t old_index) {
#pragma unused(old_index)

 uint32_t cwnd = min(tp->snd_wnd, tp->snd_cwnd);
 if (tp->snd_cwnd >= tp->snd_ssthresh) {
  cwnd = cwnd / tp->t_maxseg;
 } else {
  cwnd = cwnd / 2 / tp->t_maxseg;
 }
 tp->snd_cwnd = max(TCP_CC_CWND_INIT_BYTES, cwnd * tp->t_maxseg);


 tp->t_bytes_acked = 0;

 OSIncrementAtomic((volatile SInt32 *)&tcp_cc_newreno.num_sockets);
}
