
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct in6_addr {int * s6_addr16; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int rmx_locks; int rmx_mtu; } ;
struct rtentry {int rt_flags; TYPE_3__ rt_rmx; int rt_ifp; } ;
struct TYPE_6__ {TYPE_1__* rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ip6ctlparam {struct mbuf* ip6c_m; struct icmp6_hdr* ip6c_icmp6; struct in6_addr* ip6c_finaldst; } ;
struct ip6_hdr {int dummy; } ;
struct ip6_frag {int dummy; } ;
struct icmp6_hdr {int icmp6_mtu; } ;
typedef int sin6 ;
struct TYPE_8__ {int icp6s_pmtuchg; } ;
struct TYPE_5__ {int if_index; } ;


 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 int IN6_LINKMTU (int ) ;
 int IPV6_MMTU ;
 int PF_INET6 ;
 int RTF_CLONING ;
 int RTF_HOST ;
 int RTF_PRCLONING ;
 int RTV_MTU ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int bzero (struct sockaddr_in6*,int) ;
 int htons (int ) ;
 TYPE_4__ icmp6stat ;
 int ntohl (int ) ;
 struct rtentry* rtalloc1_scoped (struct sockaddr*,int ,int,int ) ;
 int rtfree (struct rtentry*) ;

void
icmp6_mtudisc_update(struct ip6ctlparam *ip6cp, int validated)
{
 struct in6_addr *dst = ip6cp->ip6c_finaldst;
 struct icmp6_hdr *icmp6 = ip6cp->ip6c_icmp6;
 struct mbuf *m = ip6cp->ip6c_m;
 u_int mtu = ntohl(icmp6->icmp6_mtu);
 struct rtentry *rt = ((void*)0);
 struct sockaddr_in6 sin6;




 if (mtu < sizeof(struct ip6_hdr) + sizeof(struct ip6_frag) + 8)
  return;

 if (!validated)
  return;







 if (mtu < IPV6_MMTU)
  mtu = IPV6_MMTU - 8;

 bzero(&sin6, sizeof(sin6));
 sin6.sin6_family = PF_INET6;
 sin6.sin6_len = sizeof(struct sockaddr_in6);
 sin6.sin6_addr = *dst;

 if (IN6_IS_ADDR_LINKLOCAL(dst)) {
  sin6.sin6_addr.s6_addr16[1] =
      htons(m->m_pkthdr.rcvif->if_index);
 }
 rt = rtalloc1_scoped((struct sockaddr *)&sin6, 0,
     RTF_CLONING | RTF_PRCLONING, m->m_pkthdr.rcvif->if_index);
 if (rt != ((void*)0)) {
  RT_LOCK(rt);
  if ((rt->rt_flags & RTF_HOST) &&
      !(rt->rt_rmx.rmx_locks & RTV_MTU) &&
      mtu < IN6_LINKMTU(rt->rt_ifp) &&
      rt->rt_rmx.rmx_mtu > mtu) {
   icmp6stat.icp6s_pmtuchg++;
   rt->rt_rmx.rmx_mtu = mtu;
  }
  RT_UNLOCK(rt);
  rtfree(rt);
 }
}
