
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpopt {int to_flags; int to_requested_s_scale; int to_mss; int to_tsval; } ;
struct tcpcb {scalar_t__ request_r_scale; int t_flags; int requested_s_scale; int t_flagsext; int ts_recent_age; int ts_recent; } ;


 scalar_t__ SACK_ENABLED (struct tcpcb*) ;
 int TF_RCVD_SCALE ;
 int TF_RCVD_TSTMP ;
 int TF_REQ_SCALE ;
 int TF_SACK_ENABLE ;
 int TF_SACK_PERMIT ;
 int TOF_MSS ;
 int TOF_SACK ;
 int TOF_SCALE ;
 int TOF_TS ;
 int tcp_mss (struct tcpcb*,int ,unsigned int) ;
 int tcp_now ;

__attribute__((used)) static void
tcp_finalize_options(struct tcpcb *tp, struct tcpopt *to, unsigned int ifscope)
{
 if (to->to_flags & TOF_TS) {
  tp->t_flags |= TF_RCVD_TSTMP;
  tp->ts_recent = to->to_tsval;
  tp->ts_recent_age = tcp_now;

 }
 if (to->to_flags & TOF_MSS)
  tcp_mss(tp, to->to_mss, ifscope);
 if (SACK_ENABLED(tp)) {
  if (!(to->to_flags & TOF_SACK))
   tp->t_flagsext &= ~(TF_SACK_ENABLE);
  else
   tp->t_flags |= TF_SACK_PERMIT;
 }
 if (to->to_flags & TOF_SCALE) {
  tp->t_flags |= TF_RCVD_SCALE;
  tp->requested_s_scale = to->to_requested_s_scale;


  if (tp->request_r_scale > 0)
   tp->t_flags |= TF_REQ_SCALE;
 }
}
