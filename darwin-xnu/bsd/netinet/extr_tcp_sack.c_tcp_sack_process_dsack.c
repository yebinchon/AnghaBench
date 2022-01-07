
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpopt {int to_nsacks; scalar_t__ to_sacks; } ;
struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {int t_flagsext; scalar_t__ t_tlphighrxt; int t_rxtshift; scalar_t__ snd_una; int snd_holes; int t_dsack_recvd; } ;
struct tcp_rxt_seg {int rx_count; int rx_flags; } ;
struct sackblk {scalar_t__ start; scalar_t__ end; } ;
typedef int second_sack ;
typedef int first_sack ;
typedef int boolean_t ;
struct TYPE_2__ {int tcps_dsack_disable; int tcps_dsack_ackloss; int tcps_dsack_recvd; int tcps_dsack_recvd_old; } ;


 int FALSE ;
 scalar_t__ SEQ_GEQ (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_GT (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_LEQ (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_LT (scalar_t__,scalar_t__) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 scalar_t__ TCPOLEN_SACK ;
 scalar_t__ TCP_DSACK_SEQ_IN_WINDOW (struct tcpcb*,scalar_t__,scalar_t__) ;
 int TCP_RXT_DSACK_FOR_TLP ;
 int TCP_RXT_SPURIOUS ;
 int TCP_VALIDATE_SACK_SEQ_NUMBERS (struct tcpcb*,struct sackblk*,scalar_t__) ;
 int TF_DISABLE_DSACK ;
 int TF_SENT_TLPROBE ;
 int TRUE ;
 int bcopy (scalar_t__,struct sackblk*,int) ;
 void* ntohl (scalar_t__) ;
 int tcp_dsack_ignore_hw_duplicates ;
 struct tcp_rxt_seg* tcp_rxtseg_find (struct tcpcb*,scalar_t__,scalar_t__) ;
 TYPE_1__ tcpstat ;

boolean_t
tcp_sack_process_dsack(struct tcpcb *tp, struct tcpopt *to,
    struct tcphdr *th)
{
 struct sackblk first_sack, second_sack;
 struct tcp_rxt_seg *rxseg;

 bcopy(to->to_sacks, &first_sack, sizeof(first_sack));
 first_sack.start = ntohl(first_sack.start);
 first_sack.end = ntohl(first_sack.end);

 if (to->to_nsacks > 1) {
  bcopy((to->to_sacks + TCPOLEN_SACK), &second_sack,
      sizeof(second_sack));
  second_sack.start = ntohl(second_sack.start);
  second_sack.end = ntohl(second_sack.end);
 }

 if (SEQ_LT(first_sack.start, th->th_ack) &&
     SEQ_LEQ(first_sack.end, th->th_ack)) {
  if (!(TCP_DSACK_SEQ_IN_WINDOW(tp, first_sack.start, th->th_ack) &&
      TCP_DSACK_SEQ_IN_WINDOW(tp, first_sack.end, th->th_ack))) {
   to->to_nsacks--;
   to->to_sacks += TCPOLEN_SACK;
   tcpstat.tcps_dsack_recvd_old++;





   return (TRUE);
  }
 } else if (to->to_nsacks > 1 &&
     SEQ_LEQ(second_sack.start, first_sack.start) &&
     SEQ_GEQ(second_sack.end, first_sack.end)) {
  if (!TCP_VALIDATE_SACK_SEQ_NUMBERS(tp, &second_sack,
      th->th_ack)) {
   to->to_nsacks--;
   to->to_sacks += TCPOLEN_SACK;
   tcpstat.tcps_dsack_recvd_old++;
   return (TRUE);
  }
 } else {

  return (FALSE);
 }


 to->to_nsacks--;
 to->to_sacks += TCPOLEN_SACK;
 tcpstat.tcps_dsack_recvd++;
 tp->t_dsack_recvd++;


 if (tp->t_flagsext & TF_DISABLE_DSACK)
  return (TRUE);


 if ((tp->t_flagsext & TF_SENT_TLPROBE) &&
     first_sack.end == tp->t_tlphighrxt) {
  if ((rxseg = tcp_rxtseg_find(tp, first_sack.start,
      (first_sack.end - 1))) != ((void*)0))
   rxseg->rx_flags |= TCP_RXT_DSACK_FOR_TLP;
 }

 if (((tp->t_rxtshift == 1 && first_sack.start == tp->snd_una) ||
     ((tp->t_flagsext & TF_SENT_TLPROBE) &&
     first_sack.end == tp->t_tlphighrxt)) &&
     TAILQ_EMPTY(&tp->snd_holes) &&
     SEQ_GT(th->th_ack, tp->snd_una)) {
  tcpstat.tcps_dsack_ackloss++;

  return (TRUE);
 } else if ((rxseg = tcp_rxtseg_find(tp, first_sack.start,
     (first_sack.end - 1))) == ((void*)0)) {





  if (!tcp_dsack_ignore_hw_duplicates) {
   tp->t_flagsext |= TF_DISABLE_DSACK;
   tcpstat.tcps_dsack_disable++;
  }
 } else {




  if (rxseg->rx_count == 1)
   rxseg->rx_flags |= TCP_RXT_SPURIOUS;
  else
   rxseg->rx_flags &= ~TCP_RXT_SPURIOUS;
 }
 return (TRUE);
}
