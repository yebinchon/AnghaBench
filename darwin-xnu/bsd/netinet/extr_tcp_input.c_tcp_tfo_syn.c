
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct tcpopt {int to_flags; unsigned char* to_tfo; } ;
struct tcpcb {int t_tfo_stats; int t_tfo_flags; int t_inpcb; } ;
typedef int out ;
typedef int boolean_t ;
struct TYPE_2__ {int tcps_tfo_syn_data_rcv; int tcps_tfo_cookie_invalid; int tcps_tfo_cookie_req_rcv; } ;


 int CCAES_BLOCK_SIZE ;
 int FALSE ;
 int OSDecrementAtomic (int *) ;
 scalar_t__ OSIncrementAtomic (int *) ;
 unsigned char TCPOLEN_FASTOPEN_REQ ;
 int TCP_FASTOPEN_SERVER ;
 int TFO_F_COOKIE_VALID ;
 int TFO_F_OFFER_COOKIE ;
 int TFO_S_COOKIEREQ_RECV ;
 int TFO_S_COOKIE_INVALID ;
 int TFO_S_SYNDATA_RCV ;
 int TOF_TFO ;
 int TOF_TFOREQ ;
 int TRUE ;
 scalar_t__ memcmp (int *,unsigned char*,unsigned char) ;
 int tcp_fastopen ;
 scalar_t__ tcp_tfo_backlog ;
 int tcp_tfo_gen_cookie (int ,int *,int) ;
 int tcp_tfo_halfcnt ;
 TYPE_1__ tcpstat ;

__attribute__((used)) static boolean_t
tcp_tfo_syn(struct tcpcb *tp, struct tcpopt *to)
{
 u_char out[CCAES_BLOCK_SIZE];
 unsigned char len;

 if (!(to->to_flags & (TOF_TFO | TOF_TFOREQ)) ||
     !(tcp_fastopen & TCP_FASTOPEN_SERVER))
  return (FALSE);

 if ((to->to_flags & TOF_TFOREQ)) {
  tp->t_tfo_flags |= TFO_F_OFFER_COOKIE;

  tp->t_tfo_stats |= TFO_S_COOKIEREQ_RECV;
  tcpstat.tcps_tfo_cookie_req_rcv++;
  return (FALSE);
 }


 tcp_tfo_gen_cookie(tp->t_inpcb, out, sizeof(out));

 len = *to->to_tfo - TCPOLEN_FASTOPEN_REQ;
 to->to_tfo++;
 if (memcmp(out, to->to_tfo, len)) {

  tp->t_tfo_flags |= TFO_F_OFFER_COOKIE;

  tp->t_tfo_stats |= TFO_S_COOKIE_INVALID;
  tcpstat.tcps_tfo_cookie_invalid++;
  return (FALSE);
 }

 if (OSIncrementAtomic(&tcp_tfo_halfcnt) >= tcp_tfo_backlog) {

  OSDecrementAtomic(&tcp_tfo_halfcnt);
  return (FALSE);
 }

 tp->t_tfo_flags |= TFO_F_COOKIE_VALID;

 tp->t_tfo_stats |= TFO_S_SYNDATA_RCV;
 tcpstat.tcps_tfo_syn_data_rcv++;

 return (TRUE);
}
