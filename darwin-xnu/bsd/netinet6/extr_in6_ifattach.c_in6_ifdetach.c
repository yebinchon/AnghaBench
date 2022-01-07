
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * s6_addr16; } ;
struct sockaddr_in6 {int sin6_len; TYPE_4__ sin6_addr; scalar_t__ sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int rt_flags; struct sockaddr* rt_gateway; struct ifnet* rt_ifp; } ;
struct in6_multi_mship {int dummy; } ;
struct ifaddr {TYPE_3__* ifa_addr; struct ifnet* ifa_ifp; } ;
struct TYPE_5__ {struct in6_multi_mship* lh_first; } ;
struct in6_ifaddr {int ia_flags; struct ifaddr ia_ifa; struct in6_ifaddr* ia_next; int ia_prefixmask; int ia_addr; TYPE_1__ ia6_memberships; } ;
struct ifnet {int if_index; int if_addrlist; } ;
typedef int sin6 ;
struct TYPE_7__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {int sin6_addr; } ;


 scalar_t__ AF_INET6 ;
 int IFA_ADDREF (struct ifaddr*) ;
 int IFA_ADDREF_LOCKED (struct ifaddr*) ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int IFA_ROUTE ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LIST_REMOVE (struct in6_multi_mship*,int ) ;
 scalar_t__ LLTABLE6 (struct ifnet*) ;
 int LOG_ERR ;
 int RTF_CONDEMNED ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct ifaddr* TAILQ_FIRST (int *) ;
 struct ifaddr* TAILQ_NEXT (struct ifaddr*,int ) ;
 int bzero (struct sockaddr_in6*,int) ;
 int htons (int ) ;
 int i6mm_chain ;
 int if_detach_ifa (struct ifnet*,struct ifaddr*) ;
 int if_name (struct ifnet*) ;
 int ifa_list ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int in6_ifaddr_rwlock ;
 struct in6_ifaddr* in6_ifaddrs ;
 int in6_leavegroup (struct in6_multi_mship*) ;
 int in6_purgeaddr (struct ifaddr*) ;
 TYPE_4__ in6addr_linklocal_allnodes ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lltable_free (scalar_t__) ;
 int nd6_mutex ;
 int nd6_purge (struct ifnet*) ;
 int nd6log (int ) ;
 int routegenid_inet6_update () ;
 struct sockaddr* rt_key (struct rtentry*) ;
 struct sockaddr* rt_mask (struct rtentry*) ;
 struct rtentry* rtalloc1 (struct sockaddr*,int ,int ) ;
 int rtfree (struct rtentry*) ;
 int rtrequest (int ,struct sockaddr*,struct sockaddr*,struct sockaddr*,int ,struct rtentry**) ;
 TYPE_2__* satosin6 (TYPE_3__**) ;

void
in6_ifdetach(struct ifnet *ifp)
{
 struct in6_ifaddr *ia, *oia;
 struct ifaddr *ifa;
 struct rtentry *rt;
 struct sockaddr_in6 sin6;
 struct in6_multi_mship *imm;
 int unlinked;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);


 nd6_purge(ifp);

 if (LLTABLE6(ifp))
  lltable_free(LLTABLE6(ifp));


 lck_rw_lock_exclusive(&in6_ifaddr_rwlock);
 ia = in6_ifaddrs;
 while (ia != ((void*)0)) {
  if (ia->ia_ifa.ifa_ifp != ifp) {
   ia = ia->ia_next;
   continue;
  }
  IFA_ADDREF(&ia->ia_ifa);
  lck_rw_done(&in6_ifaddr_rwlock);
  in6_purgeaddr(&ia->ia_ifa);
  IFA_REMREF(&ia->ia_ifa);
  lck_rw_lock_exclusive(&in6_ifaddr_rwlock);






  ia = in6_ifaddrs;
 }
 lck_rw_done(&in6_ifaddr_rwlock);

 ifnet_lock_exclusive(ifp);


 ifa = TAILQ_FIRST(&ifp->if_addrlist);
 while (ifa != ((void*)0)) {
  IFA_LOCK(ifa);
  if (ifa->ifa_addr->sa_family != AF_INET6 ||
      !IN6_IS_ADDR_LINKLOCAL(&satosin6(&ifa->ifa_addr)->
      sin6_addr)) {
   IFA_UNLOCK(ifa);
   ifa = TAILQ_NEXT(ifa, ifa_list);
   continue;
  }

  ia = (struct in6_ifaddr *)ifa;


  IFA_ADDREF_LOCKED(ifa);

  if_detach_ifa(ifp, ifa);
  IFA_UNLOCK(ifa);
  ifnet_lock_done(ifp);
  IFA_LOCK(ifa);
  while ((imm = ia->ia6_memberships.lh_first) != ((void*)0)) {
   LIST_REMOVE(imm, i6mm_chain);
   IFA_UNLOCK(ifa);
   in6_leavegroup(imm);
   IFA_LOCK(ifa);
  }


  if (ia->ia_flags & IFA_ROUTE) {
   IFA_UNLOCK(ifa);
   rt = rtalloc1((struct sockaddr *)&ia->ia_addr, 0, 0);
   if (rt != ((void*)0)) {
    (void) rtrequest(RTM_DELETE,
     (struct sockaddr *)&ia->ia_addr,
     (struct sockaddr *)&ia->ia_addr,
     (struct sockaddr *)&ia->ia_prefixmask,
     rt->rt_flags, (struct rtentry **)0);
    rtfree(rt);
   }
  } else {
   IFA_UNLOCK(ifa);
  }


  unlinked = 1;
  oia = ia;
  lck_rw_lock_exclusive(&in6_ifaddr_rwlock);
  if (oia == (ia = in6_ifaddrs)) {
   in6_ifaddrs = ia->ia_next;
  } else {
   while (ia->ia_next && (ia->ia_next != oia))
    ia = ia->ia_next;
   if (ia->ia_next) {
    ia->ia_next = oia->ia_next;
   } else {
    nd6log((LOG_ERR,
        "%s: didn't unlink in6ifaddr from "
        "list\n", if_name(ifp)));
    unlinked = 0;
   }
  }
  lck_rw_done(&in6_ifaddr_rwlock);

  ifa = &oia->ia_ifa;






  if (unlinked)
   IFA_REMREF(ifa);

  IFA_REMREF(ifa);






  ifnet_lock_exclusive(ifp);
  ifa = TAILQ_FIRST(&ifp->if_addrlist);
 }
 ifnet_lock_done(ifp);


 routegenid_inet6_update();
 nd6_purge(ifp);


 bzero(&sin6, sizeof (sin6));
 sin6.sin6_len = sizeof (struct sockaddr_in6);
 sin6.sin6_family = AF_INET6;
 sin6.sin6_addr = in6addr_linklocal_allnodes;
 sin6.sin6_addr.s6_addr16[1] = htons(ifp->if_index);
 rt = rtalloc1((struct sockaddr *)&sin6, 0, 0);
 if (rt != ((void*)0)) {
  RT_LOCK(rt);
  if (rt->rt_ifp == ifp) {





   rt->rt_flags |= RTF_CONDEMNED;
   RT_UNLOCK(rt);
   (void) rtrequest(RTM_DELETE, rt_key(rt), rt->rt_gateway,
       rt_mask(rt), rt->rt_flags, 0);
  } else {
   RT_UNLOCK(rt);
  }
  rtfree(rt);
 }
}
