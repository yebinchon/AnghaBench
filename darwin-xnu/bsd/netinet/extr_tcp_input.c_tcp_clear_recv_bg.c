
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_traffic_class; int so_flags1; } ;


 scalar_t__ IS_TCP_RECV_BG (struct socket*) ;
 int SOF1_TRAFFIC_MGT_TCP_RECVBG ;
 int so_set_lro (struct socket*,int ) ;

void
tcp_clear_recv_bg(struct socket *so)
{
 if (IS_TCP_RECV_BG(so))
  so->so_flags1 &= ~(SOF1_TRAFFIC_MGT_TCP_RECVBG);





 so_set_lro(so, so->so_traffic_class);
}
