
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcpiphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct tcpcb {TYPE_2__* t_inpcb; int t_flags; } ;
struct rtentry {TYPE_1__* rt_ifp; } ;
struct ip6_hdr {int dummy; } ;
struct TYPE_6__ {int inp_vflag; } ;
struct TYPE_5__ {scalar_t__ if_type; int if_baudrate; } ;


 int IFSCOPE_NONE ;
 scalar_t__ IFT_PPP ;
 int INP_IPV6 ;
 int RT_UNLOCK (struct rtentry*) ;
 int TF_SLOWLINK ;
 int necp_socket_get_effective_mtu (TYPE_2__*,int) ;
 scalar_t__ slowlink_wsize ;
 int tcp_maxmtu (struct rtentry*) ;
 int tcp_maxmtu6 (struct rtentry*) ;
 int tcp_mssdflt ;
 struct rtentry* tcp_rtlookup (TYPE_2__*,int ) ;
 struct rtentry* tcp_rtlookup6 (TYPE_2__*,int ) ;
 int tcp_v6mssdflt ;

int
tcp_mssopt(struct tcpcb *tp)
{
 struct rtentry *rt;
 int mss;
 rt = tcp_rtlookup(tp->t_inpcb, IFSCOPE_NONE);
 if (rt == ((void*)0)) {
  return (



   tcp_mssdflt);
 }






 if (rt->rt_ifp->if_type == IFT_PPP && slowlink_wsize > 0 &&
     rt->rt_ifp->if_baudrate > 9600 && rt->rt_ifp->if_baudrate <= 128000) {
  tp->t_flags |= TF_SLOWLINK;
 }




 mss = tcp_maxmtu(rt);


 RT_UNLOCK(rt);






 return (mss - (sizeof (struct tcpiphdr)));
}
