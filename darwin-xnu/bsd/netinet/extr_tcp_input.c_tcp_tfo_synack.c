
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpopt {int to_flags; unsigned char* to_tfo; } ;
struct tcpcb {int t_tfo_flags; int t_tfo_stats; } ;
struct TYPE_2__ {int tcps_tfo_no_cookie_rcv; int tcps_tfo_syn_loss; int tcps_tfo_cookie_wrong; int tcps_tfo_cookie_rcv; } ;


 unsigned char TCPOLEN_FASTOPEN_REQ ;
 unsigned char TFO_COOKIE_LEN_MAX ;
 int TFO_F_COOKIE_REQ ;
 int TFO_F_COOKIE_SENT ;
 int TFO_F_SYN_LOSS ;
 int TFO_S_COOKIE_RCV ;
 int TFO_S_COOKIE_WRONG ;
 int TFO_S_NO_COOKIE_RCV ;
 int TFO_S_SYN_LOSS ;
 int TOF_TFO ;
 int VERIFY (int) ;
 int tcp_cache_set_cookie (struct tcpcb*,unsigned char*,unsigned char) ;
 int tcp_heuristic_tfo_loss (struct tcpcb*) ;
 int tcp_heuristic_tfo_success (struct tcpcb*) ;
 TYPE_1__ tcpstat ;

__attribute__((used)) static void
tcp_tfo_synack(struct tcpcb *tp, struct tcpopt *to)
{
 if (to->to_flags & TOF_TFO) {
  unsigned char len = *to->to_tfo - TCPOLEN_FASTOPEN_REQ;





  VERIFY(len <= TFO_COOKIE_LEN_MAX);

  to->to_tfo++;

  tcp_cache_set_cookie(tp, to->to_tfo, len);
  tcp_heuristic_tfo_success(tp);

  tp->t_tfo_stats |= TFO_S_COOKIE_RCV;
  tcpstat.tcps_tfo_cookie_rcv++;
  if (tp->t_tfo_flags & TFO_F_COOKIE_SENT) {
   tcpstat.tcps_tfo_cookie_wrong++;
   tp->t_tfo_stats |= TFO_S_COOKIE_WRONG;
  }
 } else {






  if (tp->t_tfo_flags & TFO_F_SYN_LOSS) {
   tp->t_tfo_stats |= TFO_S_SYN_LOSS;
   tcpstat.tcps_tfo_syn_loss++;

   tcp_heuristic_tfo_loss(tp);
  } else {
   if (tp->t_tfo_flags & TFO_F_COOKIE_REQ) {
    tp->t_tfo_stats |= TFO_S_NO_COOKIE_RCV;
    tcpstat.tcps_tfo_no_cookie_rcv++;
   }

   tcp_heuristic_tfo_success(tp);
  }
 }
}
