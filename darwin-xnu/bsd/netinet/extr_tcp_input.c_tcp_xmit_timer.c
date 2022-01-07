
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ tcp_seq ;
struct tcpcb {scalar_t__ iss; int t_flagsext; int t_srtt; int t_rttvar; int t_rttbest; int t_rttcur; scalar_t__ t_softerror; int t_rttmin; int t_rxtcur; TYPE_3__* t_inpcb; int t_rttupdated; int t_rttvar_prev; int t_srtt_prev; scalar_t__ t_badrexmt_time; int snd_max; int snd_una; } ;
struct TYPE_8__ {int tcps_rttupdated; } ;
struct TYPE_6__ {int ro_rt; } ;
struct TYPE_7__ {TYPE_2__ inp_route; TYPE_1__* inp_last_outifp; } ;
struct TYPE_5__ {int if_eflags; } ;


 int IFEF_AWDL ;
 scalar_t__ SEQ_GT (scalar_t__,int ) ;
 scalar_t__ SEQ_LEQ (scalar_t__,int ) ;
 int TCPTV_REXMTMAX ;
 int TCPT_RANGESET (int ,int ,void*,int ,int ) ;
 int TCP_ADD_REXMTSLOP (struct tcpcb*) ;
 int TCP_DELTA_SHIFT ;
 int TCP_REXMTVAL (struct tcpcb*) ;
 int TCP_RTTVAR_SHIFT ;
 int TCP_RTT_SHIFT ;
 int TF_RECOMPUTE_RTT ;
 scalar_t__ TSTMP_GEQ (scalar_t__,scalar_t__) ;
 void* max (int ,int) ;
 int nstat_route_rtt (int ,int,int) ;
 TYPE_4__ tcpstat ;
 int update_base_rtt (struct tcpcb*,int) ;

__attribute__((used)) static void
tcp_xmit_timer(struct tcpcb *tp, int rtt,
 u_int32_t tsecr, tcp_seq th_ack)
{
 int delta;







 if (tp->t_inpcb->inp_last_outifp != ((void*)0) &&
     (tp->t_inpcb->inp_last_outifp->if_eflags & IFEF_AWDL) &&
     th_ack == tp->iss + 1)
  return;

 if (tp->t_flagsext & TF_RECOMPUTE_RTT) {
  if (SEQ_GT(th_ack, tp->snd_una) &&
      SEQ_LEQ(th_ack, tp->snd_max) &&
      (tsecr == 0 ||
      TSTMP_GEQ(tsecr, tp->t_badrexmt_time))) {





   tp->t_flagsext &= ~(TF_RECOMPUTE_RTT);
   tp->t_badrexmt_time = 0;
   tp->t_srtt = max(tp->t_srtt_prev, rtt);
   tp->t_srtt = tp->t_srtt << TCP_RTT_SHIFT;
   tp->t_rttvar = max(tp->t_rttvar_prev, (rtt >> 1));
   tp->t_rttvar = tp->t_rttvar << TCP_RTTVAR_SHIFT;

   if (tp->t_rttbest > (tp->t_srtt + tp->t_rttvar))
    tp->t_rttbest = tp->t_srtt + tp->t_rttvar;

   goto compute_rto;
  } else {
   return;
  }
 }

 tcpstat.tcps_rttupdated++;
 tp->t_rttupdated++;

 if (rtt > 0) {
  tp->t_rttcur = rtt;
  update_base_rtt(tp, rtt);
 }

 if (tp->t_srtt != 0) {
  delta = (rtt << TCP_DELTA_SHIFT)
   - (tp->t_srtt >> (TCP_RTT_SHIFT - TCP_DELTA_SHIFT));

  if ((tp->t_srtt += delta) <= 0)
   tp->t_srtt = 1;
  if (delta < 0)
   delta = -delta;
  delta -= tp->t_rttvar >> (TCP_RTTVAR_SHIFT - TCP_DELTA_SHIFT);
  if ((tp->t_rttvar += delta) <= 0)
   tp->t_rttvar = 1;
  if (tp->t_rttbest == 0 ||
   tp->t_rttbest > (tp->t_srtt + tp->t_rttvar))
   tp->t_rttbest = tp->t_srtt + tp->t_rttvar;
 } else {





  tp->t_srtt = rtt << TCP_RTT_SHIFT;
  tp->t_rttvar = rtt << (TCP_RTTVAR_SHIFT - 1);
 }

compute_rto:
 nstat_route_rtt(tp->t_inpcb->inp_route.ro_rt, tp->t_srtt,
  tp->t_rttvar);
 TCPT_RANGESET(tp->t_rxtcur, TCP_REXMTVAL(tp),
  max(tp->t_rttmin, rtt + 2), TCPTV_REXMTMAX,
  TCP_ADD_REXMTSLOP(tp));
 tp->t_softerror = 0;
}
