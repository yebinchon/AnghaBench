
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtentry {int rt_flags; TYPE_1__* rt_ifp; } ;
struct ifaddr {int ifa_addr; } ;
struct TYPE_2__ {int if_flags; } ;


 int IFF_LOOPBACK ;
 int RTF_HOST ;
 int RTM_ADD ;
 int RT_LOCK (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int in6_ifloop_request (int ,struct ifaddr*) ;
 struct rtentry* rtalloc1 (int ,int ,int ) ;

__attribute__((used)) static void
in6_ifaddloop(struct ifaddr *ifa)
{
 struct rtentry *rt;





 rt = rtalloc1(ifa->ifa_addr, 0, 0);
 if (rt != ((void*)0))
  RT_LOCK(rt);
 if (rt == ((void*)0) || (rt->rt_flags & RTF_HOST) == 0 ||
     (rt->rt_ifp->if_flags & IFF_LOOPBACK) == 0) {
  if (rt != ((void*)0)) {
   RT_REMREF_LOCKED(rt);
   RT_UNLOCK(rt);
  }
  in6_ifloop_request(RTM_ADD, ifa);
 } else if (rt != ((void*)0)) {
  RT_REMREF_LOCKED(rt);
  RT_UNLOCK(rt);
 }
}
