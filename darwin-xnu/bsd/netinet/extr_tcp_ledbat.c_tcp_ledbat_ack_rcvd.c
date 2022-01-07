
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tcphdr {int dummy; } ;
struct tcpcb {scalar_t__ snd_cwnd; scalar_t__ t_maxseg; scalar_t__ t_bytes_acked; scalar_t__ bg_ssthresh; scalar_t__ snd_nxt; scalar_t__ snd_max; } ;


 int BYTES_ACKED (struct tcphdr*,struct tcpcb*) ;
 scalar_t__ lmin (int,scalar_t__) ;
 scalar_t__ tcp_do_rfc3465_lim2 ;
 int update_cwnd (struct tcpcb*,scalar_t__) ;

void
tcp_ledbat_ack_rcvd(struct tcpcb *tp, struct tcphdr *th) {
 u_int cw = tp->snd_cwnd;
 u_int incr = tp->t_maxseg;
 int acked = 0;

 acked = BYTES_ACKED(th, tp);
 tp->t_bytes_acked += acked;
 if (cw >= tp->bg_ssthresh) {

  if (tp->t_bytes_acked < cw) {

   incr = 0;
  }
 } else {







  u_int abc_lim;

  abc_lim = (tcp_do_rfc3465_lim2 &&
   tp->snd_nxt == tp->snd_max) ? incr * 2 : incr;

  incr = lmin(acked, abc_lim);
 }
 if (tp->t_bytes_acked >= cw)
  tp->t_bytes_acked -= cw;
 if (incr > 0)
  update_cwnd(tp, incr);
}
