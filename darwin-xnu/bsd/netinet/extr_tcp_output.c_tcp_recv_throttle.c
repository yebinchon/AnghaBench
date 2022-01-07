
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {int t_flagsext; scalar_t__ t_rttcur; scalar_t__ t_recv_throttle_ts; scalar_t__ acc_iaj; TYPE_2__* t_inpcb; } ;
struct sockbuf {int sb_idealsize; } ;
struct TYPE_4__ {TYPE_1__* inp_socket; } ;
struct TYPE_3__ {struct sockbuf so_rcv; } ;


 int TF_RECV_THROTTLE ;
 scalar_t__ TSTMP_SUPPORTED (struct tcpcb*) ;
 scalar_t__ get_base_rtt (struct tcpcb*) ;
 scalar_t__ max (scalar_t__,int) ;
 scalar_t__ target_qdelay ;
 scalar_t__ tcp_acc_iaj_react_limit ;
 scalar_t__ tcp_now ;
 int tcp_recv_throttle_minwin ;
 int tcp_use_rtt_recvbg ;

__attribute__((used)) static int
tcp_recv_throttle (struct tcpcb *tp)
{
 uint32_t base_rtt, newsize;
 struct sockbuf *sbrcv = &tp->t_inpcb->inp_socket->so_rcv;

 if (tcp_use_rtt_recvbg == 1 &&
     TSTMP_SUPPORTED(tp)) {
  if (tp->t_flagsext & TF_RECV_THROTTLE)
   return (1);

  base_rtt = get_base_rtt(tp);

  if (base_rtt != 0 && tp->t_rttcur != 0) {




   if (tp->t_rttcur > (base_rtt + target_qdelay)) {
    tp->t_flagsext |= TF_RECV_THROTTLE;
    if (tp->t_recv_throttle_ts == 0)
     tp->t_recv_throttle_ts = tcp_now;




    if (sbrcv->sb_idealsize >
        tcp_recv_throttle_minwin) {
     newsize = sbrcv->sb_idealsize >> 1;

     newsize =
         max(newsize,
         tcp_recv_throttle_minwin);
     sbrcv->sb_idealsize = newsize;
    }
    return (1);
   } else {
    return (0);
   }
  }
 }





 if (tp->acc_iaj > tcp_acc_iaj_react_limit)
  return (1);

 return (0);
}
