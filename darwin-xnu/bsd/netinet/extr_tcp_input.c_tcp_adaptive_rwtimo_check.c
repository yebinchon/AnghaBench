
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_adaptive_rtimo; scalar_t__ t_state; scalar_t__ t_rtimo_probes; int t_flagsext; int * t_timer; TYPE_1__* t_inpcb; } ;
struct ifnet {int if_eflags; } ;
struct TYPE_2__ {struct ifnet* inp_last_outifp; } ;


 int IFEF_PROBE_CONNECTIVITY ;
 int OFFSET_FROM_START (struct tcpcb*,int) ;
 scalar_t__ TCPS_ESTABLISHED ;
 size_t TCPT_KEEP ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TF_DETECT_READSTALL ;

__attribute__((used)) static inline void
tcp_adaptive_rwtimo_check(struct tcpcb *tp, int tlen)
{
 struct ifnet *outifp = tp->t_inpcb->inp_last_outifp;

 if ((tp->t_adaptive_rtimo > 0 ||
     (outifp != ((void*)0) &&
     (outifp->if_eflags & IFEF_PROBE_CONNECTIVITY)))
     && tlen > 0 &&
     tp->t_state == TCPS_ESTABLISHED) {
  tp->t_timer[TCPT_KEEP] = OFFSET_FROM_START(tp,
   (TCP_REXMTVAL(tp) << 1));
  tp->t_flagsext |= TF_DETECT_READSTALL;
  tp->t_rtimo_probes = 0;
 }
}
