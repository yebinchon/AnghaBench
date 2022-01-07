
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct tcphdr {int dummy; } ;
struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin_addr; } ;
struct rtentry {TYPE_1__* rt_ifp; } ;
struct route_in6 {struct rtentry* ro_rt; int ro_dst; } ;
struct route {struct rtentry* ro_rt; int ro_dst; } ;
struct pf_addr {int v6addr; int v4addr; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
typedef int sa_family_t ;
typedef int ro6 ;
typedef int ro ;
struct TYPE_3__ {int if_mtu; } ;




 scalar_t__ CLAT46_HDR_EXPANSION_OVERHD ;
 int IN6_LINKMTU (TYPE_1__*) ;
 scalar_t__ INTF_ADJUST_MTU_FOR_CLAT46 (TYPE_1__*) ;
 int bzero (struct route_in6*,int) ;
 int max (int,int) ;
 int min (int,int) ;
 int panic (char*) ;
 int rtalloc (struct route_in6*) ;
 int rtfree (struct rtentry*) ;
 int tcp_mssdflt ;

__attribute__((used)) static u_int16_t
pf_calc_mss(struct pf_addr *addr, sa_family_t af, u_int16_t offer)
{
 struct rtentry *rt = ((void*)0);
 int hlen;
 u_int16_t mss = tcp_mssdflt;

 switch (af) {
 default:
  panic("pf_calc_mss: not AF_INET or AF_INET6!");
  return (0);
 }

 if (rt && rt->rt_ifp) {

  int interface_mtu = rt->rt_ifp->if_mtu;

  if (af == 129 &&
      INTF_ADJUST_MTU_FOR_CLAT46(rt->rt_ifp)) {
   interface_mtu = IN6_LINKMTU(rt->rt_ifp);

   interface_mtu -= CLAT46_HDR_EXPANSION_OVERHD;
  }
  mss = interface_mtu - hlen - sizeof (struct tcphdr);
  mss = max(tcp_mssdflt, mss);
  rtfree(rt);
 }
 mss = min(mss, offer);
 mss = max(mss, 64);
 return (mss);
}
