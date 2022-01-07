
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_6__ {int rmx_locks; int rmx_mtu; } ;
struct rtentry {int rt_flags; struct ifaddr* rt_ifa; struct ifnet* rt_ifp; TYPE_1__ rt_rmx; int (* rt_if_ref_fn ) (struct ifnet*,int) ;int (* rt_llinfo_purge ) (struct rtentry*) ;} ;
struct ifnet {int if_flags; int if_mtu; int if_index; int if_addrhead; } ;
struct ifaddr {void (* ifa_rtrequest ) (int,struct rtentry*,struct sockaddr*) ;struct ifnet* ifa_ifp; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ CLAT46_HDR_EXPANSION_OVERHD ;
 int IFA_ADDREF (struct ifaddr*) ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IFF_LOOPBACK ;
 int IN6_LINKMTU (struct ifnet*) ;
 scalar_t__ INTF_ADJUST_MTU_FOR_CLAT46 (struct ifnet*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTF_CONDEMNED ;
 int RTF_HOST ;
 int RTM_ADD ;
 int RTM_DELETE ;
 int RTV_MTU ;
 int RT_ADDREF_LOCKED (struct rtentry*) ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct ifaddr* TAILQ_FIRST (int *) ;
 struct ifnet* if_withname (struct sockaddr*) ;
 struct ifaddr* ifa_ifwithaddr (TYPE_2__*) ;
 struct ifaddr* ifa_ifwithaddr_scoped (struct sockaddr*,unsigned int) ;
 struct ifaddr* ifa_ifwithnet_scoped (struct sockaddr*,unsigned int) ;
 struct ifaddr* ifa_ifwithroute_scoped_locked (int,TYPE_2__*,struct sockaddr*,unsigned int) ;
 struct ifaddr* ifaof_ifpforaddr (struct sockaddr*,struct ifnet*) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 int rnh_lock ;
 int routegenid_inet6_update () ;
 int routegenid_inet_update () ;
 TYPE_2__* rt_key (struct rtentry*) ;
 scalar_t__ rt_primary_default (struct rtentry*,TYPE_2__*) ;
 int rtsetifa (struct rtentry*,struct ifaddr*) ;
 int set_primary_ifscope (scalar_t__,int ) ;
 int stub1 (struct rtentry*) ;
 int stub2 (struct ifnet*,int) ;
 int stub3 (struct ifnet*,int) ;

__attribute__((used)) static void
rt_setif(struct rtentry *rt, struct sockaddr *Ifpaddr, struct sockaddr *Ifaaddr,
    struct sockaddr *Gate, unsigned int ifscope)
{
 struct ifaddr *ifa = ((void*)0);
 struct ifnet *ifp = ((void*)0);
 void (*ifa_rtrequest)(int, struct rtentry *, struct sockaddr *);

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);

 RT_LOCK_ASSERT_HELD(rt);


 if (rt->rt_flags & RTF_CONDEMNED)
  return;


 RT_ADDREF_LOCKED(rt);


 RT_CONVERT_LOCK(rt);






 if (Ifpaddr && (ifa = ifa_ifwithnet_scoped(Ifpaddr, ifscope)) &&
     (ifp = ifa->ifa_ifp) && (Ifaaddr || Gate)) {
  IFA_REMREF(ifa);
  ifa = ifaof_ifpforaddr(Ifaaddr ? Ifaaddr : Gate, ifp);
 } else {
  if (ifa != ((void*)0)) {
   IFA_REMREF(ifa);
   ifa = ((void*)0);
  }
  if (Ifpaddr && (ifp = if_withname(Ifpaddr))) {
   if (Gate) {
    ifa = ifaof_ifpforaddr(Gate, ifp);
   } else {
    ifnet_lock_shared(ifp);
    ifa = TAILQ_FIRST(&ifp->if_addrhead);
    if (ifa != ((void*)0))
     IFA_ADDREF(ifa);
    ifnet_lock_done(ifp);
   }
  } else if (Ifaaddr &&
      (ifa = ifa_ifwithaddr_scoped(Ifaaddr, ifscope))) {
   ifp = ifa->ifa_ifp;
  } else if (Gate != ((void*)0)) {







   RT_UNLOCK(rt);
   if ((ifa = ifa_ifwithroute_scoped_locked(rt->rt_flags,
       rt_key(rt), Gate, ifscope)) != ((void*)0))
    ifp = ifa->ifa_ifp;
   RT_LOCK(rt);

   if (rt->rt_flags & RTF_CONDEMNED) {
    if (ifa != ((void*)0))
     IFA_REMREF(ifa);

    RT_REMREF_LOCKED(rt);
    return;
   }
  }
 }


 if (rt_key(rt)->sa_family == AF_INET)
  routegenid_inet_update();





 if (ifa != ((void*)0)) {
  struct ifaddr *oifa = rt->rt_ifa;
  if (oifa != ifa) {
   if (oifa != ((void*)0)) {
    IFA_LOCK_SPIN(oifa);
    ifa_rtrequest = oifa->ifa_rtrequest;
    IFA_UNLOCK(oifa);
    if (ifa_rtrequest != ((void*)0))
     ifa_rtrequest(RTM_DELETE, rt, Gate);
   }
   rtsetifa(rt, ifa);

   if (rt->rt_ifp != ifp) {



    if (rt->rt_llinfo_purge != ((void*)0))
     rt->rt_llinfo_purge(rt);




    if (rt->rt_if_ref_fn != ((void*)0)) {
     rt->rt_if_ref_fn(ifp, 1);
     rt->rt_if_ref_fn(rt->rt_ifp, -1);
    }
   }
   rt->rt_ifp = ifp;




   if (rt_primary_default(rt, rt_key(rt))) {
    set_primary_ifscope(rt_key(rt)->sa_family,
        rt->rt_ifp->if_index);
   }




   if (!(rt->rt_rmx.rmx_locks & RTV_MTU)) {
    rt->rt_rmx.rmx_mtu = rt->rt_ifp->if_mtu;
    if (rt_key(rt)->sa_family == AF_INET &&
        INTF_ADJUST_MTU_FOR_CLAT46(ifp)) {
     rt->rt_rmx.rmx_mtu = IN6_LINKMTU(rt->rt_ifp);

     rt->rt_rmx.rmx_mtu -= CLAT46_HDR_EXPANSION_OVERHD;
    }
   }

   if (rt->rt_ifa != ((void*)0)) {
    IFA_LOCK_SPIN(rt->rt_ifa);
    ifa_rtrequest = rt->rt_ifa->ifa_rtrequest;
    IFA_UNLOCK(rt->rt_ifa);
    if (ifa_rtrequest != ((void*)0))
     ifa_rtrequest(RTM_ADD, rt, Gate);
   }
   IFA_REMREF(ifa);

   RT_REMREF_LOCKED(rt);
   return;
  }
  IFA_REMREF(ifa);
  ifa = ((void*)0);
 }


 if (rt->rt_ifa != ((void*)0)) {
  IFA_LOCK_SPIN(rt->rt_ifa);
  ifa_rtrequest = rt->rt_ifa->ifa_rtrequest;
  IFA_UNLOCK(rt->rt_ifa);
  if (ifa_rtrequest != ((void*)0))
   ifa_rtrequest(RTM_ADD, rt, Gate);
 }





 if ((rt->rt_ifp->if_flags & IFF_LOOPBACK) &&
     (rt->rt_flags & RTF_HOST) && rt->rt_ifa->ifa_ifp == rt->rt_ifp) {
  ifa = ifa_ifwithaddr(rt_key(rt));
  if (ifa != ((void*)0)) {
   if (ifa != rt->rt_ifa)
    rtsetifa(rt, ifa);
   IFA_REMREF(ifa);
  }
 }


 RT_REMREF_LOCKED(rt);
}
