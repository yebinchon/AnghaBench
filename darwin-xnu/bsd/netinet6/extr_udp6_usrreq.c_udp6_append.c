
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ip6_hdr {int dummy; } ;
struct inpcb {int in6p_flags; TYPE_3__* in6p_socket; } ;
struct ifnet {int dummy; } ;
typedef int boolean_t ;
struct TYPE_7__ {int so_options; int so_rcv; } ;
struct TYPE_6__ {int udps_fullsock; } ;


 int AF_INET6 ;
 int IFNET_IS_CELLULAR (struct ifnet*) ;
 scalar_t__ IFNET_IS_WIFI (struct ifnet*) ;
 scalar_t__ IFNET_IS_WIRED (struct ifnet*) ;
 int INP_ADD_STAT (struct inpcb*,int,int,int,int ,int) ;
 int INP_CONTROLOPTS ;
 int SOCK_DGRAM ;
 int SO_TIMESTAMP ;
 int SO_TIMESTAMP_CONTINUOUS ;
 int SO_TIMESTAMP_MONOTONIC ;
 int inp_set_activity_bitmap (struct inpcb*) ;
 int ip6_savecontrol (struct inpcb*,struct mbuf*,struct mbuf**) ;
 int m_adj (struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mac_inpcb_check_deliver (struct inpcb*,struct mbuf*,int ,int ) ;
 scalar_t__ nstat_collect ;
 int rxbytes ;
 int rxpackets ;
 scalar_t__ sbappendaddr (int *,struct sockaddr*,struct mbuf*,struct mbuf*,int *) ;
 int so_recv_data_stat (TYPE_3__*,struct mbuf*,int ) ;
 int sorwakeup (TYPE_3__*) ;
 TYPE_2__ udpstat ;

__attribute__((used)) static void
udp6_append(struct inpcb *last, struct ip6_hdr *ip6,
    struct sockaddr_in6 *udp_in6, struct mbuf *n, int off, struct ifnet *ifp)
{
#pragma unused(ip6)
 struct mbuf *opts = ((void*)0);
 int ret = 0;
 boolean_t cell = IFNET_IS_CELLULAR(ifp);
 boolean_t wifi = (!cell && IFNET_IS_WIFI(ifp));
 boolean_t wired = (!wifi && IFNET_IS_WIRED(ifp));







 if ((last->in6p_flags & INP_CONTROLOPTS) != 0 ||
     (last->in6p_socket->so_options & SO_TIMESTAMP) != 0 ||
     (last->in6p_socket->so_options & SO_TIMESTAMP_MONOTONIC) != 0 ||
  (last->in6p_socket->so_options & SO_TIMESTAMP_CONTINUOUS) != 0) {
  ret = ip6_savecontrol(last, n, &opts);
  if (ret != 0) {
   m_freem(n);
   m_freem(opts);
   return;
  }
 }
 m_adj(n, off);
 if (nstat_collect) {
  INP_ADD_STAT(last, cell, wifi, wired, rxpackets, 1);
  INP_ADD_STAT(last, cell, wifi, wired, rxbytes, n->m_pkthdr.len);
  inp_set_activity_bitmap(last);
 }
 so_recv_data_stat(last->in6p_socket, n, 0);
 if (sbappendaddr(&last->in6p_socket->so_rcv,
     (struct sockaddr *)udp_in6, n, opts, ((void*)0)) == 0)
  udpstat.udps_fullsock++;
 else
  sorwakeup(last->in6p_socket);
}
