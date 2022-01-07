
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef scalar_t__ u_int32_t ;
struct tcphdr {int dummy; } ;
struct tcpcb {scalar_t__ t_bytes_acked; scalar_t__ snd_cwnd; int snd_scale; scalar_t__ t_maxseg; } ;


 scalar_t__ BYTES_ACKED (struct tcphdr*,struct tcpcb*) ;
 scalar_t__ TCP_CUBIC_ENABLE_TCPMODE (struct tcpcb*) ;
 int TCP_MAXWIN ;
 scalar_t__ get_base_rtt (struct tcpcb*) ;
 void* min (scalar_t__,int) ;
 scalar_t__ tcp_cc_is_cwnd_nonvalidated (struct tcpcb*) ;
 int tcp_cubic_tcp_friendliness ;
 scalar_t__ tcp_cubic_tcpwin (struct tcpcb*,struct tcphdr*) ;
 scalar_t__ tcp_cubic_update (struct tcpcb*,scalar_t__) ;

__attribute__((used)) static void
tcp_cubic_congestion_avd(struct tcpcb *tp, struct tcphdr *th)
{
 u_int32_t cubic_target_win, tcp_win, rtt;


 if (tcp_cc_is_cwnd_nonvalidated(tp) != 0)
  return;

 tp->t_bytes_acked += BYTES_ACKED(th, tp);

 rtt = get_base_rtt(tp);





 cubic_target_win = tcp_cubic_update(tp, rtt);


 tcp_win = tcp_cubic_tcpwin(tp, th);

 if (tp->snd_cwnd < tcp_win &&
     (tcp_cubic_tcp_friendliness == 1 ||
     TCP_CUBIC_ENABLE_TCPMODE(tp))) {

  if (tp->t_bytes_acked >= tp->snd_cwnd) {
   tp->t_bytes_acked -= tp->snd_cwnd;
   tp->snd_cwnd = min(tcp_win, TCP_MAXWIN << tp->snd_scale);
  }
 } else {
  if (cubic_target_win > tp->snd_cwnd) {







   u_int64_t incr_win;
   incr_win = tp->snd_cwnd * tp->t_maxseg;
   incr_win /= (cubic_target_win - tp->snd_cwnd);
   if (incr_win > 0 &&
       tp->t_bytes_acked >= incr_win) {
    tp->t_bytes_acked -= incr_win;
    tp->snd_cwnd =
        min((tp->snd_cwnd + tp->t_maxseg),
        TCP_MAXWIN << tp->snd_scale);
   }
  }
 }
}
