
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct tcphdr {int dummy; } ;
struct TYPE_6__ {int sack_bytes_rexmit; } ;
struct tcpcb {scalar_t__ t_early_rexmt_count; int snd_max; int snd_una; int t_dupacks; int snd_fack; int t_maxseg; int t_rexmtthresh; int t_flagsext; scalar_t__ t_tlpstart; scalar_t__ t_tlphighrxt; int t_early_rexmt_win; int snd_wnd; TYPE_2__ sackhint; int snd_holes; TYPE_1__* t_inpcb; } ;
struct TYPE_7__ {int sb_cc; } ;
struct socket {TYPE_3__ so_snd; } ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {int tcps_early_rexmt; int tcps_tlp_recovery; } ;
struct TYPE_5__ {struct socket* inp_socket; } ;


 scalar_t__ SACK_ENABLED (struct tcpcb*) ;
 scalar_t__ SEQ_GT (int,int) ;
 int TAILQ_EMPTY (int *) ;
 int TCP_CC_EARLY_RETRANSMIT ;
 int TCP_CC_TLP_RECOVERY ;
 scalar_t__ TCP_EARLY_REXMT_LIMIT ;
 int TF_SENT_TLPROBE ;
 scalar_t__ early_rexmt ;
 int max (int,int) ;
 int min (int,int ) ;
 int tcp_ccdbg_trace (struct tcpcb*,struct tcphdr*,int ) ;
 int tcp_now ;
 int tcprexmtthresh ;
 TYPE_4__ tcpstat ;

__attribute__((used)) static void
tcp_early_rexmt_check (struct tcpcb *tp, struct tcphdr *th)
{
 u_int32_t obytes, snd_off;
 int32_t snd_len;
 struct socket *so = tp->t_inpcb->inp_socket;

 if (early_rexmt && (SACK_ENABLED(tp) ||
     tp->t_early_rexmt_count < TCP_EARLY_REXMT_LIMIT) &&
     SEQ_GT(tp->snd_max, tp->snd_una) &&
     (tp->t_dupacks == 1 ||
     (SACK_ENABLED(tp) &&
     !TAILQ_EMPTY(&tp->snd_holes)))) {







  if (SACK_ENABLED(tp) &&
      !TAILQ_EMPTY(&tp->snd_holes)) {
   obytes = (tp->snd_max - tp->snd_fack) +
    tp->sackhint.sack_bytes_rexmit;
  } else {
   obytes = (tp->snd_max - tp->snd_una);
  }
  snd_off = tp->snd_max - tp->snd_una;
  snd_len = min(so->so_snd.sb_cc, tp->snd_wnd) - snd_off;
  if (obytes < (tp->t_maxseg << 2) &&
      snd_len <= 0) {
   u_int32_t osegs;

   osegs = obytes / tp->t_maxseg;
   if ((osegs * tp->t_maxseg) < obytes)
    osegs++;
   osegs += tp->t_dupacks;
   if (osegs < 4) {
    tp->t_rexmtthresh =
        ((osegs - 1) > 1) ? (osegs - 1) : 1;
    tp->t_rexmtthresh =
        min(tp->t_rexmtthresh, tcprexmtthresh);
    tp->t_rexmtthresh =
        max(tp->t_rexmtthresh, tp->t_dupacks);

    if (tp->t_early_rexmt_count == 0)
     tp->t_early_rexmt_win = tcp_now;

    if (tp->t_flagsext & TF_SENT_TLPROBE) {
     tcpstat.tcps_tlp_recovery++;
     tcp_ccdbg_trace(tp, th,
         TCP_CC_TLP_RECOVERY);
    } else {
     tcpstat.tcps_early_rexmt++;
     tp->t_early_rexmt_count++;
     tcp_ccdbg_trace(tp, th,
         TCP_CC_EARLY_RETRANSMIT);
    }
   }
  }
 }







 tp->t_flagsext &= ~(TF_SENT_TLPROBE);
 tp->t_tlphighrxt = 0;
 tp->t_tlpstart = 0;
}
