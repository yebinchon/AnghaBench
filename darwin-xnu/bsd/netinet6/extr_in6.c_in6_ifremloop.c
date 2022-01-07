
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtentry {int rt_flags; TYPE_2__* rt_ifp; } ;
struct TYPE_3__ {int sin6_addr; } ;
struct in6_ifaddr {int ia_ifa; TYPE_1__ ia_addr; struct in6_ifaddr* ia_next; } ;
struct ifaddr {int ifa_addr; } ;
struct TYPE_4__ {int if_flags; } ;


 int IFA_IN6 (struct ifaddr*) ;
 int IFA_LOCK (int *) ;
 int IFA_UNLOCK (int *) ;
 int IFF_LOOPBACK ;
 scalar_t__ IN6_ARE_ADDR_EQUAL (int ,int *) ;
 int RTF_HOST ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int in6_ifaddr_rwlock ;
 struct in6_ifaddr* in6_ifaddrs ;
 int in6_ifloop_request (int ,struct ifaddr*) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 struct rtentry* rtalloc1 (int ,int ,int ) ;

__attribute__((used)) static void
in6_ifremloop(struct ifaddr *ifa)
{
 struct in6_ifaddr *ia;
 struct rtentry *rt;
 int ia_count = 0;
 lck_rw_lock_exclusive(&in6_ifaddr_rwlock);
 for (ia = in6_ifaddrs; ia; ia = ia->ia_next) {
  IFA_LOCK(&ia->ia_ifa);
  if (IN6_ARE_ADDR_EQUAL(IFA_IN6(ifa), &ia->ia_addr.sin6_addr)) {
   ia_count++;
   if (ia_count > 1) {
    IFA_UNLOCK(&ia->ia_ifa);
    break;
   }
  }
  IFA_UNLOCK(&ia->ia_ifa);
 }
 lck_rw_done(&in6_ifaddr_rwlock);

 if (ia_count == 1) {
  rt = rtalloc1(ifa->ifa_addr, 0, 0);
  if (rt != ((void*)0)) {
   RT_LOCK(rt);
   if ((rt->rt_flags & RTF_HOST) != 0 &&
       (rt->rt_ifp->if_flags & IFF_LOOPBACK) != 0) {
    RT_REMREF_LOCKED(rt);
    RT_UNLOCK(rt);
    in6_ifloop_request(RTM_DELETE, ifa);
   } else {
    RT_UNLOCK(rt);
   }
  }
 }
}
