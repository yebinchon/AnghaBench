
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct ifnet* rt_ifp; } ;
struct ip6_hdr {int ip6_src; int ip6_dst; } ;
struct ifnet {int dummy; } ;
struct gif_softc {int gif_if; scalar_t__ gif_pdst; scalar_t__ gif_psrc; } ;
typedef int sin6 ;


 int AF_INET6 ;
 int IFF_LINK2 ;
 int IN6_ARE_ADDR_EQUAL (int *,int *) ;
 int LOG_WARNING ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int bzero (struct sockaddr_in6*,int) ;
 int if_name (int *) ;
 int ifnet_flags (int ) ;
 int ip6_sprintf (int *) ;
 int log (int ,char*,int ,int ) ;
 struct rtentry* rtalloc1 (struct sockaddr*,int ,int ) ;
 int rtfree (struct rtentry*) ;

__attribute__((used)) static int
gif_validate6(
 const struct ip6_hdr *ip6,
 struct gif_softc *sc,
 struct ifnet *ifp)
{
 struct sockaddr_in6 *src, *dst;

 src = (struct sockaddr_in6 *)(void *)sc->gif_psrc;
 dst = (struct sockaddr_in6 *)(void *)sc->gif_pdst;






 if (!IN6_ARE_ADDR_EQUAL(&src->sin6_addr, &ip6->ip6_dst) ||
     !IN6_ARE_ADDR_EQUAL(&dst->sin6_addr, &ip6->ip6_src))
  return (0);




 if ((ifnet_flags(sc->gif_if) & IFF_LINK2) == 0 && ifp) {
  struct sockaddr_in6 sin6;
  struct rtentry *rt;

  bzero(&sin6, sizeof (sin6));
  sin6.sin6_family = AF_INET6;
  sin6.sin6_len = sizeof (struct sockaddr_in6);
  sin6.sin6_addr = ip6->ip6_src;

  rt = rtalloc1((struct sockaddr *)&sin6, 0, 0);
  if (rt != ((void*)0))
   RT_LOCK(rt);
  if (!rt || rt->rt_ifp != ifp) {





   if (rt != ((void*)0)) {
    RT_UNLOCK(rt);
    rtfree(rt);
   }
   return (0);
  }
  RT_UNLOCK(rt);
  rtfree(rt);
 }

 return (128 * 2);
}
