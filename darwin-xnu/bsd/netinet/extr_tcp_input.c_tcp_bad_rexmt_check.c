
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpopt {int to_flags; scalar_t__ to_tsecr; } ;
struct tcphdr {int th_ack; } ;
struct tcpcb {scalar_t__ t_rxtshift; int t_flagsext; scalar_t__ t_tlphighrxt; int t_flags; scalar_t__ t_pmtud_start_ts; scalar_t__ t_tlpstart; scalar_t__ t_rxtstart; } ;
struct TYPE_2__ {int tcps_dsack_badrexmt; int tcps_tlp_recoverlastpkt; int tcps_sndrexmitbad; } ;


 int EXIT_FASTRECOVERY (struct tcpcb*) ;
 int IN_FASTRECOVERY (struct tcpcb*) ;
 scalar_t__ SEQ_GEQ (int ,scalar_t__) ;
 int TCP_CC_BAD_REXMT_RECOVERY ;
 int TCP_CC_DSACK_BAD_REXMT ;
 int TCP_CC_TLP_RECOVER_LASTPACKET ;
 int TF_BLACKHOLE ;
 int TF_SENT_TLPROBE ;
 int TOF_TS ;
 scalar_t__ TSTMP_LT (scalar_t__,scalar_t__) ;
 scalar_t__ TSTMP_SUPPORTED (struct tcpcb*) ;
 int tcp_bad_rexmt_restore_state (struct tcpcb*,struct tcphdr*) ;
 int tcp_ccdbg_trace (struct tcpcb*,struct tcphdr*,int ) ;
 scalar_t__ tcp_detect_bad_rexmt (struct tcpcb*,struct tcphdr*,struct tcpopt*,scalar_t__) ;
 int tcp_pmtud_revert_segment_size (struct tcpcb*) ;
 int tcp_reduce_congestion_window (struct tcpcb*) ;
 int tcp_rxtseg_clean (struct tcpcb*) ;
 scalar_t__ tcp_rxtseg_detect_bad_rexmt (struct tcpcb*,int ) ;
 scalar_t__ tcp_rxtseg_dsack_for_tlp (struct tcpcb*) ;
 TYPE_1__ tcpstat ;

__attribute__((used)) static void
tcp_bad_rexmt_check(struct tcpcb *tp, struct tcphdr *th, struct tcpopt *to)
{
 if (tp->t_rxtshift > 0 &&
     tcp_detect_bad_rexmt(tp, th, to, tp->t_rxtstart)) {
  ++tcpstat.tcps_sndrexmitbad;
  tcp_bad_rexmt_restore_state(tp, th);
  tcp_ccdbg_trace(tp, th, TCP_CC_BAD_REXMT_RECOVERY);
 } else if ((tp->t_flagsext & TF_SENT_TLPROBE)
     && tp->t_tlphighrxt > 0
     && SEQ_GEQ(th->th_ack, tp->t_tlphighrxt)
     && !tcp_detect_bad_rexmt(tp, th, to, tp->t_tlpstart)) {




  if (tcp_rxtseg_dsack_for_tlp(tp)) {




   tcp_rxtseg_clean(tp);
   goto out;
  }






  ++tcpstat.tcps_tlp_recoverlastpkt;
  if (!IN_FASTRECOVERY(tp)) {
   tcp_reduce_congestion_window(tp);
   EXIT_FASTRECOVERY(tp);
  }
  tcp_ccdbg_trace(tp, th, TCP_CC_TLP_RECOVER_LASTPACKET);
 } else if (tcp_rxtseg_detect_bad_rexmt(tp, th->th_ack)) {




  tcpstat.tcps_dsack_badrexmt++;
  tcp_bad_rexmt_restore_state(tp, th);
  tcp_ccdbg_trace(tp, th, TCP_CC_DSACK_BAD_REXMT);
  tcp_rxtseg_clean(tp);
 }
out:
 tp->t_flagsext &= ~(TF_SENT_TLPROBE);
 tp->t_tlphighrxt = 0;
 tp->t_tlpstart = 0;







 if (tp->t_rxtshift > 0 && (tp->t_flags & TF_BLACKHOLE) &&
     tp->t_pmtud_start_ts > 0 && TSTMP_SUPPORTED(tp)) {
  if ((to->to_flags & TOF_TS) && to->to_tsecr != 0
      && TSTMP_LT(to->to_tsecr, tp->t_pmtud_start_ts)) {
   tcp_pmtud_revert_segment_size(tp);
  }
 }
 if (tp->t_pmtud_start_ts > 0)
  tp->t_pmtud_start_ts = 0;
}
