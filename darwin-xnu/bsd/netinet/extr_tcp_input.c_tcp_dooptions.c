
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct tcpopt {int to_nsacks; int* to_sacks; int* to_tfo; int to_flags; int to_tsecr; int to_tsval; int to_requested_s_scale; int to_mss; } ;
struct tcphdr {int th_flags; } ;
struct tcpcb {int t_flags; int t_state; } ;
typedef int mss ;
struct TYPE_2__ {int tcps_sack_rcv_blocks; } ;


 int NTOHL (int ) ;
 int NTOHS (int ) ;
 int TCPOLEN_FASTOPEN_REQ ;
 int TCPOLEN_MAXSEG ;
 int TCPOLEN_SACK ;
 int TCPOLEN_SACK_PERMITTED ;
 int TCPOLEN_TIMESTAMP ;
 int TCPOLEN_WINDOW ;
 int TCPOPT_EOL ;



 int TCPOPT_NOP ;




 int TCPS_LISTEN ;
 int TCPS_SYN_SENT ;
 int TCP_MAX_WINSHIFT ;
 int TFO_COOKIE_LEN_MAX ;
 int TFO_COOKIE_LEN_MIN ;
 int TF_REQ_TSTMP ;
 int TH_SYN ;
 int TOF_MSS ;
 int TOF_SACK ;
 int TOF_SCALE ;
 int TOF_TFO ;
 int TOF_TFOREQ ;
 int TOF_TS ;
 int bcopy (char*,char*,int) ;
 int min (int,int ) ;
 int tcp_do_mptcp_options (struct tcpcb*,int*,struct tcphdr*,struct tcpopt*,int) ;
 int tcp_do_rfc1323 ;
 int tcp_do_sack ;
 TYPE_1__ tcpstat ;

__attribute__((used)) static void
tcp_dooptions(struct tcpcb *tp, u_char *cp, int cnt, struct tcphdr *th,
    struct tcpopt *to)
{
 u_short mss = 0;
 int opt, optlen;

 for (; cnt > 0; cnt -= optlen, cp += optlen) {
  opt = cp[0];
  if (opt == TCPOPT_EOL)
   break;
  if (opt == TCPOPT_NOP)
   optlen = 1;
  else {
   if (cnt < 2)
    break;
   optlen = cp[1];
   if (optlen < 2 || optlen > cnt)
    break;
  }
  switch (opt) {

  default:
   continue;

  case 133:
   if (optlen != TCPOLEN_MAXSEG)
    continue;
   if (!(th->th_flags & TH_SYN))
    continue;
   bcopy((char *) cp + 2, (char *) &mss, sizeof(mss));
   NTOHS(mss);
   to->to_mss = mss;
   to->to_flags |= TOF_MSS;
   break;

  case 128:
   if (optlen != TCPOLEN_WINDOW)
    continue;
   if (!(th->th_flags & TH_SYN))
    continue;
   to->to_flags |= TOF_SCALE;
   to->to_requested_s_scale = min(cp[2], TCP_MAX_WINSHIFT);
   break;

  case 129:
   if (optlen != TCPOLEN_TIMESTAMP)
    continue;
   to->to_flags |= TOF_TS;
   bcopy((char *)cp + 2,
       (char *)&to->to_tsval, sizeof(to->to_tsval));
   NTOHL(to->to_tsval);
   bcopy((char *)cp + 6,
       (char *)&to->to_tsecr, sizeof(to->to_tsecr));
   NTOHL(to->to_tsecr);

   if (!(tp->t_flags & TF_REQ_TSTMP) &&
       tcp_do_rfc1323 == 1)
    tp->t_flags |= TF_REQ_TSTMP;
   break;
  case 130:
   if (!tcp_do_sack ||
       optlen != TCPOLEN_SACK_PERMITTED)
    continue;
   if (th->th_flags & TH_SYN)
    to->to_flags |= TOF_SACK;
   break;
  case 131:
   if (optlen <= 2 || (optlen - 2) % TCPOLEN_SACK != 0)
    continue;
   to->to_nsacks = (optlen - 2) / TCPOLEN_SACK;
   to->to_sacks = cp + 2;
   tcpstat.tcps_sack_rcv_blocks++;

   break;
  case 134:
   if (optlen == TCPOLEN_FASTOPEN_REQ) {
    if (tp->t_state != TCPS_LISTEN)
     continue;

    to->to_flags |= TOF_TFOREQ;
   } else {
    if (optlen < TCPOLEN_FASTOPEN_REQ ||
        (optlen - TCPOLEN_FASTOPEN_REQ) > TFO_COOKIE_LEN_MAX ||
        (optlen - TCPOLEN_FASTOPEN_REQ) < TFO_COOKIE_LEN_MIN)
     continue;
    if (tp->t_state != TCPS_LISTEN &&
        tp->t_state != TCPS_SYN_SENT)
     continue;

    to->to_flags |= TOF_TFO;
    to->to_tfo = cp + 1;
   }

   break;





  }
 }
}
