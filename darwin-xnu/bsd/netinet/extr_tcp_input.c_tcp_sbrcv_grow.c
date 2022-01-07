
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct tcpopt {scalar_t__ to_tsecr; } ;
struct tcpcb {int t_flagsext; scalar_t__ rfbuf_ts; int rfbuf_cnt; int t_maxseg; TYPE_1__* t_bwmeas; int t_segq; } ;
struct socket {int so_flags1; } ;
struct sockbuf {int sb_flags; int sb_hiwat; struct socket* sb_so; } ;
typedef int int32_t ;
struct TYPE_2__ {int bw_rcvbw_max; } ;


 int LIST_EMPTY (int *) ;
 int SB_AUTOSIZE ;
 int SOF1_EXTEND_BK_IDLE_WANTED ;
 scalar_t__ TCPTV_RCVBUFIDLE ;
 scalar_t__ TCPTV_RCVNOTS_QUANTUM ;
 int TCP_RCVNOTS_BYTELEVEL ;
 int TF_RECV_THROTTLE ;
 scalar_t__ TSTMP_GEQ (scalar_t__,scalar_t__) ;
 scalar_t__ TSTMP_GT (scalar_t__,scalar_t__) ;
 int TSTMP_SUPPORTED (struct tcpcb*) ;
 int max (int,int) ;
 int tcp_autorcvbuf_inc_shift ;
 int tcp_autorcvbuf_max ;
 scalar_t__ tcp_cansbgrow (struct sockbuf*) ;
 scalar_t__ tcp_do_autorcvbuf ;
 scalar_t__ tcp_now ;
 int tcp_sbrcv_reserve (struct tcpcb*,struct sockbuf*,int,int,int) ;

__attribute__((used)) static void
tcp_sbrcv_grow(struct tcpcb *tp, struct sockbuf *sbrcv,
 struct tcpopt *to, u_int32_t pktlen, u_int32_t rcvbuf_max)
{
 struct socket *so = sbrcv->sb_so;
 if (tcp_do_autorcvbuf == 0 ||
  (sbrcv->sb_flags & SB_AUTOSIZE) == 0 ||
  tcp_cansbgrow(sbrcv) == 0 ||
  sbrcv->sb_hiwat >= rcvbuf_max ||
  (tp->t_flagsext & TF_RECV_THROTTLE) ||
  (so->so_flags1 & SOF1_EXTEND_BK_IDLE_WANTED) ||
  !LIST_EMPTY(&tp->t_segq)) {

  goto out;
 }

 if (TSTMP_GT(tcp_now,
  tp->rfbuf_ts + TCPTV_RCVBUFIDLE)) {



  goto out;
 }

 if (!TSTMP_SUPPORTED(tp)) {






  if (TSTMP_GEQ(tcp_now,
   tp->rfbuf_ts + TCPTV_RCVNOTS_QUANTUM)) {
   if (tp->rfbuf_cnt >= TCP_RCVNOTS_BYTELEVEL) {
    tcp_sbrcv_reserve(tp, sbrcv,
        tcp_autorcvbuf_max, 0,
        tcp_autorcvbuf_max);
   }
   goto out;
  } else {
   tp->rfbuf_cnt += pktlen;
   return;
  }
 } else if (to->to_tsecr != 0) {
  if (TSTMP_GEQ(to->to_tsecr, tp->rfbuf_ts)) {
   if (tp->rfbuf_cnt > (sbrcv->sb_hiwat -
    (sbrcv->sb_hiwat >> 1))) {
    int32_t rcvbuf_inc, min_incr;
    rcvbuf_inc = (tp->rfbuf_cnt << 1)
        - sbrcv->sb_hiwat;





    min_incr = tp->t_maxseg << tcp_autorcvbuf_inc_shift;
    if (rcvbuf_inc < min_incr)
     rcvbuf_inc = min_incr;

    rcvbuf_inc =
        (rcvbuf_inc / tp->t_maxseg) * tp->t_maxseg;
    tcp_sbrcv_reserve(tp, sbrcv,
        sbrcv->sb_hiwat + rcvbuf_inc,
        (tp->rfbuf_cnt * 2), rcvbuf_max);
   }

   if (tp->t_bwmeas != ((void*)0) && tp->rfbuf_cnt > 0 &&
       TSTMP_GT(tcp_now, tp->rfbuf_ts)) {
    u_int32_t rcv_bw;
    rcv_bw = tp->rfbuf_cnt /
        (int)(tcp_now - tp->rfbuf_ts);
    if (tp->t_bwmeas->bw_rcvbw_max == 0) {
     tp->t_bwmeas->bw_rcvbw_max = rcv_bw;
    } else {
     tp->t_bwmeas->bw_rcvbw_max = max(
         tp->t_bwmeas->bw_rcvbw_max, rcv_bw);
    }
   }
   goto out;
  } else {
   tp->rfbuf_cnt += pktlen;
   return;
  }
 }
out:

 tp->rfbuf_ts = 0;
 tp->rfbuf_cnt = 0;
 return;
}
