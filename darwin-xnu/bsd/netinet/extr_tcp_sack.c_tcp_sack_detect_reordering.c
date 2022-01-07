
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tcp_seq ;
struct tcpcb {scalar_t__ t_rxtshift; int t_flagsext; int t_srtt; void* t_reorderwin; int t_inpcb; int t_reordered_pkts; } ;
struct sackhole {scalar_t__ rxmit_start; int rxmit; int end; } ;
typedef int int32_t ;
struct TYPE_2__ {int tcps_ecn_fallback_reorder; int tcps_reordered_pkts; int tcps_detect_reordering; int tcps_avoid_rxmt; } ;


 int INP_INC_IFNET_STAT (int ,int ) ;
 int SEQ_GEQ (int ,int ) ;
 scalar_t__ SEQ_GT (int ,int ) ;
 scalar_t__ SEQ_LT (int ,int ) ;
 scalar_t__ TCP_ECN_ENABLED (struct tcpcb*) ;
 int TCP_RTT_SHIFT ;
 int TF_PKTS_REORDERED ;
 int VERIFY (int ) ;
 int ecn_fallback_reorder ;
 void* max (void*,int) ;
 void* min (void*,int) ;
 int tcp_detect_reordering ;
 int tcp_heuristic_ecn_aggressive (struct tcpcb*) ;
 int tcp_now ;
 TYPE_1__ tcpstat ;
 int timer_diff (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
tcp_sack_detect_reordering(struct tcpcb *tp, struct sackhole *s,
    tcp_seq sacked_seq, tcp_seq snd_fack)
{
 int32_t rext = 0, reordered = 0;





 if (SEQ_GT(s->end, snd_fack))
  return;





 if (tp->t_rxtshift > 0)
  return;





 if (SEQ_LT(s->rxmit, sacked_seq)) {
  reordered = 1;
  tcpstat.tcps_avoid_rxmt++;
 }

 if (reordered) {
  if (tcp_detect_reordering == 1 &&
      !(tp->t_flagsext & TF_PKTS_REORDERED)) {
   tp->t_flagsext |= TF_PKTS_REORDERED;
   tcpstat.tcps_detect_reordering++;
  }

  tcpstat.tcps_reordered_pkts++;
  tp->t_reordered_pkts++;





  if (TCP_ECN_ENABLED(tp)) {
   INP_INC_IFNET_STAT(tp->t_inpcb, ecn_fallback_reorder);
   tcpstat.tcps_ecn_fallback_reorder++;
   tcp_heuristic_ecn_aggressive(tp);
  }

  VERIFY(SEQ_GEQ(snd_fack, s->rxmit));

  if (s->rxmit_start > 0) {
   rext = timer_diff(tcp_now, 0, s->rxmit_start, 0);
   if (rext < 0)
    return;
   tp->t_reorderwin = max(tp->t_reorderwin, rext);
   tp->t_reorderwin = min(tp->t_reorderwin,
       (tp->t_srtt >> (TCP_RTT_SHIFT - 1)));
   tp->t_reorderwin = max(tp->t_reorderwin, 10);
  }
 }
}
