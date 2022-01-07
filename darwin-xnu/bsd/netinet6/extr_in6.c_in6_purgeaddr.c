
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in6_multi_mship {int dummy; } ;
struct TYPE_6__ {struct in6_multi_mship* lh_first; } ;
struct TYPE_5__ {int sin6_addr; } ;
struct TYPE_4__ {scalar_t__ sin6_family; } ;
struct in6_ifaddr {int ia_flags; int ia_plen; TYPE_3__ ia6_memberships; int ia_ifa; TYPE_2__ ia_addr; TYPE_1__ ia_dstaddr; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;


 scalar_t__ AF_INET6 ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_ROUTE ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int KEV_INET6_ADDR_DELETED ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LIST_REMOVE (struct in6_multi_mship*,int ) ;
 int LOG_ERR ;
 int RTF_HOST ;
 int RTM_DELETE ;
 int i6mm_chain ;
 int if_name (struct ifnet*) ;
 int ifnet_notify_address (struct ifnet*,scalar_t__) ;
 int in6_ifremloop (int *) ;
 int in6_leavegroup (struct in6_multi_mship*) ;
 int in6_post_msg (struct ifnet*,int ,struct in6_ifaddr*,int *) ;
 int in6_unlink_ifa (struct in6_ifaddr*,struct ifnet*) ;
 int ip6_sprintf (int *) ;
 int log (int ,char*,int ,int ,int) ;
 int nd6_dad_stop (struct ifaddr*) ;
 int nd6_mutex ;
 int rtinit (int *,int ,int) ;

void
in6_purgeaddr(struct ifaddr *ifa)
{
 struct ifnet *ifp = ifa->ifa_ifp;
 struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
 struct in6_multi_mship *imm;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);


 nd6_dad_stop(ifa);





 IFA_LOCK(ifa);
 if ((ia->ia_flags & IFA_ROUTE) && ia->ia_plen == 128) {
  int error, rtf;

  IFA_UNLOCK(ifa);
  rtf = (ia->ia_dstaddr.sin6_family == AF_INET6) ? RTF_HOST : 0;
  error = rtinit(&(ia->ia_ifa), RTM_DELETE, rtf);
  if (error != 0) {
   log(LOG_ERR, "in6_purgeaddr: failed to remove "
       "a route to the p2p destination: %s on %s, "
       "errno=%d\n",
       ip6_sprintf(&ia->ia_addr.sin6_addr), if_name(ifp),
       error);

  }
  IFA_LOCK_SPIN(ifa);
  ia->ia_flags &= ~IFA_ROUTE;
 }
 IFA_UNLOCK(ifa);


 in6_ifremloop(&(ia->ia_ifa));




 IFA_LOCK(ifa);
 while ((imm = ia->ia6_memberships.lh_first) != ((void*)0)) {
  LIST_REMOVE(imm, i6mm_chain);
  IFA_UNLOCK(ifa);
  in6_leavegroup(imm);
  IFA_LOCK(ifa);
 }
 IFA_UNLOCK(ifa);


 in6_unlink_ifa(ia, ifp);
 in6_post_msg(ifp, KEV_INET6_ADDR_DELETED, ia, ((void*)0));

 (void) ifnet_notify_address(ifp, AF_INET6);
}
