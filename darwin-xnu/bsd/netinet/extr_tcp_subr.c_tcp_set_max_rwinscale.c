
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int request_r_scale; } ;
struct TYPE_2__ {int sb_flags; int sb_hiwat; } ;
struct socket {TYPE_1__ so_rcv; } ;
struct ifnet {int if_eflags; } ;


 int IFEF_3CA ;
 scalar_t__ IFNET_IS_CELLULAR (struct ifnet*) ;
 int SB_USRSIZE ;
 int TCP_MAXWIN ;
 int TCP_MAX_WINSHIFT ;
 int max (int ,int) ;
 int min (int,int) ;
 int tcp_autorcvbuf_max ;
 int tcp_do_rfc1323 ;
 int tcp_win_scale ;

void
tcp_set_max_rwinscale(struct tcpcb *tp, struct socket *so, struct ifnet *ifp)
{
 uint32_t maxsockbufsize;
 uint32_t rcvbuf_max;

 if (!tcp_do_rfc1323) {
  tp->request_r_scale = 0;
  return;
 }





 if (!ifp || (IFNET_IS_CELLULAR(ifp) && (ifp->if_eflags & IFEF_3CA)))
  rcvbuf_max = (tcp_autorcvbuf_max << 1);
 else
  rcvbuf_max = tcp_autorcvbuf_max;

 tp->request_r_scale = max(tcp_win_scale, tp->request_r_scale);
 maxsockbufsize = ((so->so_rcv.sb_flags & SB_USRSIZE) != 0) ?
  so->so_rcv.sb_hiwat : rcvbuf_max;

 while (tp->request_r_scale < TCP_MAX_WINSHIFT &&
  (TCP_MAXWIN << tp->request_r_scale) < maxsockbufsize)
  tp->request_r_scale++;
 tp->request_r_scale = min(tp->request_r_scale, TCP_MAX_WINSHIFT);

}
