
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct tcphdr {int dummy; } ;
struct tcpcb {int snd_cwnd; int t_maxseg; int snd_ssthresh; int t_bytes_acked; scalar_t__ snd_nxt; scalar_t__ snd_max; int snd_scale; } ;


 int BYTES_ACKED (struct tcphdr*,struct tcpcb*) ;
 int TCP_MAXWIN ;
 int lmin (int,int) ;
 int max (int,int) ;
 int min (int,int) ;
 scalar_t__ tcp_do_rfc3465 ;
 scalar_t__ tcp_do_rfc3465_lim2 ;

void
tcp_newreno_ack_rcvd(struct tcpcb *tp, struct tcphdr *th) {
 u_int cw = tp->snd_cwnd;
 u_int incr = tp->t_maxseg;
 int acked = 0;

 acked = BYTES_ACKED(th, tp);
 if (tcp_do_rfc3465) {

  if (cw >= tp->snd_ssthresh) {
   tp->t_bytes_acked += acked;
   if (tp->t_bytes_acked >= cw) {

    tp->t_bytes_acked -= cw;
   } else {

    incr = 0;
   }
  } else {







   uint32_t abc_lim;
   abc_lim = (tcp_do_rfc3465_lim2 &&
    tp->snd_nxt == tp->snd_max) ? incr * 2
    : incr;

   incr = lmin(acked, abc_lim);
  }
 } else {







  if (cw >= tp->snd_ssthresh)
   incr = max((incr * incr / cw), 1);
 }
 tp->snd_cwnd = min(cw+incr, TCP_MAXWIN<<tp->snd_scale);
}
