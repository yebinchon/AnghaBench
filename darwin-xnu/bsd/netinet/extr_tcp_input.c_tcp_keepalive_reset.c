
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_rtimo_probes; int t_flagsext; int * t_timer; } ;


 int OFFSET_FROM_START (struct tcpcb*,int ) ;
 size_t TCPT_KEEP ;
 int TCP_CONN_KEEPIDLE (struct tcpcb*) ;
 int TF_DETECT_READSTALL ;

inline void
tcp_keepalive_reset(struct tcpcb *tp)
{
 tp->t_timer[TCPT_KEEP] = OFFSET_FROM_START(tp,
  TCP_CONN_KEEPIDLE(tp));
 tp->t_flagsext &= ~(TF_DETECT_READSTALL);
 tp->t_rtimo_probes = 0;
}
