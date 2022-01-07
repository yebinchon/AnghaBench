
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flagsext; scalar_t__ t_stretchack_delayed; int rcv_nostrack_ts; } ;
typedef int int32_t ;


 int TCP_STRETCHACK_DISABLE_WIN ;
 int TF_DISABLE_STRETCHACK ;
 int tcp_now ;
 int tcp_reset_stretch_ack (struct tcpcb*) ;
 int timer_diff (int ,int ,int ,int ) ;

void
tcp_cc_after_idle_stretchack(struct tcpcb *tp)
{
 int32_t tdiff;

 if (!(tp->t_flagsext & TF_DISABLE_STRETCHACK))
  return;

 tdiff = timer_diff(tcp_now, 0, tp->rcv_nostrack_ts, 0);
 if (tdiff < 0)
  tdiff = -tdiff;

 if (tdiff > TCP_STRETCHACK_DISABLE_WIN) {
  tp->t_flagsext &= ~TF_DISABLE_STRETCHACK;
  tp->t_stretchack_delayed = 0;

  tcp_reset_stretch_ack(tp);
 }
}
