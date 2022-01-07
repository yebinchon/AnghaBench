
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct tcpopt {int to_flags; scalar_t__ to_tsecr; } ;
struct tcphdr {int th_flags; } ;
struct tcpcb {int t_srtt; int t_rxtshift; int t_flagsext; } ;
typedef int int32_t ;


 scalar_t__ TCP_ECN_ENABLED (struct tcpcb*) ;
 int TCP_RTT_SHIFT ;
 int TF_SENT_TLPROBE ;
 int TH_ECE ;
 int TOF_TS ;
 scalar_t__ TSTMP_LT (scalar_t__,scalar_t__) ;
 scalar_t__ TSTMP_SUPPORTED (struct tcpcb*) ;
 scalar_t__ tcp_now ;

int
tcp_detect_bad_rexmt(struct tcpcb *tp, struct tcphdr *th,
 struct tcpopt *to, u_int32_t rxtime)
{
 int32_t tdiff, bad_rexmt_win;
 bad_rexmt_win = (tp->t_srtt >> (TCP_RTT_SHIFT + 1));


 if (TCP_ECN_ENABLED(tp) && (th->th_flags & TH_ECE))
  return (0);
 if (TSTMP_SUPPORTED(tp)) {
  if (rxtime > 0 && (to->to_flags & TOF_TS)
      && to->to_tsecr != 0
      && TSTMP_LT(to->to_tsecr, rxtime))
      return (1);
 } else {
  if ((tp->t_rxtshift == 1
      || (tp->t_flagsext & TF_SENT_TLPROBE))
      && rxtime > 0) {
   tdiff = (int32_t)(tcp_now - rxtime);
   if (tdiff < bad_rexmt_win)
    return(1);
  }
 }
 return(0);
}
