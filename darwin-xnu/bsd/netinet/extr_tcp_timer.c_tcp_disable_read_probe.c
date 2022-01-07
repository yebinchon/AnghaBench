
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_adaptive_rtimo; int t_flagsext; scalar_t__ t_rtimo_probes; scalar_t__ t_mpsub; } ;


 int TF_DETECT_READSTALL ;
 int mptcp_reset_keepalive (struct tcpcb*) ;
 int tcp_keepalive_reset (struct tcpcb*) ;

__attribute__((used)) static void
tcp_disable_read_probe(struct tcpcb *tp)
{
 if (tp->t_adaptive_rtimo == 0 &&
     ((tp->t_flagsext & TF_DETECT_READSTALL) ||
     tp->t_rtimo_probes > 0)) {
  tcp_keepalive_reset(tp);

  if (tp->t_mpsub)
   mptcp_reset_keepalive(tp);
 }
}
