
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
struct ifnet {int if_multiaddrs; } ;
struct ifmultiaddr {int ifma_flags; scalar_t__ ifma_anoncnt; int ifma_debug; scalar_t__ ifma_reqcnt; TYPE_1__* ifma_addr; struct ifmultiaddr* ifma_ll; struct ifnet* ifma_ifp; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 scalar_t__ AF_UNSPEC ;
 int ENOENT ;
 int ENOMEM ;
 int FREE (struct sockaddr*,int ) ;
 int IFD_ATTACHED ;
 int IFMAF_ANONYMOUS ;
 int IFMA_ADDREF_LOCKED (struct ifmultiaddr*) ;
 int IFMA_LOCK (struct ifmultiaddr*) ;
 int IFMA_LOCK_ASSERT_HELD (struct ifmultiaddr*) ;
 int IFMA_REMREF (struct ifmultiaddr*) ;
 int IFMA_UNLOCK (struct ifmultiaddr*) ;
 struct ifmultiaddr* LIST_FIRST (int *) ;
 struct ifmultiaddr* LIST_NEXT (struct ifmultiaddr*,int ) ;
 int M_IFADDR ;
 int RTM_DELMADDR ;
 int SIOCDELMULTI ;
 int VERIFY (int) ;
 struct sockaddr* copy_and_normalize (struct sockaddr const*) ;
 int if_detach_ifma (struct ifnet*,struct ifmultiaddr*,int) ;
 int ifa_equal (struct sockaddr const*,TYPE_1__*) ;
 int ifma_link ;
 int ifnet_ioctl (struct ifnet*,int ,int ,int *) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int rt_newmaddrmsg (int ,struct ifmultiaddr*) ;

__attribute__((used)) static int
if_delmulti_common(struct ifmultiaddr *ifma, struct ifnet *ifp,
    const struct sockaddr *sa, int anon)
{
 struct sockaddr *dupsa = ((void*)0);
 int lastref, ll_lastref = 0, lladdr;
 struct ifmultiaddr *ll = ((void*)0);


 VERIFY(ifma != ((void*)0) || (ifp != ((void*)0) && sa != ((void*)0)));

 if (ifma != ((void*)0))
  ifp = ifma->ifma_ifp;

 if (sa != ((void*)0) &&
     (sa->sa_family == AF_LINK || sa->sa_family == AF_UNSPEC)) {
  dupsa = copy_and_normalize(sa);
  if (dupsa == ((void*)0))
   return (ENOMEM);
  sa = dupsa;
 }

 ifnet_lock_exclusive(ifp);
 if (ifma == ((void*)0)) {
  for (ifma = LIST_FIRST(&ifp->if_multiaddrs); ifma != ((void*)0);
      ifma = LIST_NEXT(ifma, ifma_link)) {
   IFMA_LOCK(ifma);
   if (!ifa_equal(sa, ifma->ifma_addr) ||
       (anon && !(ifma->ifma_flags & IFMAF_ANONYMOUS))) {
    VERIFY(!(ifma->ifma_flags & IFMAF_ANONYMOUS) ||
        ifma->ifma_anoncnt != 0);
    IFMA_UNLOCK(ifma);
    continue;
   }

   break;
  }
  if (ifma == ((void*)0)) {
   if (dupsa != ((void*)0))
    FREE(dupsa, M_IFADDR);
   ifnet_lock_done(ifp);
   return (ENOENT);
  }
 } else {
  IFMA_LOCK(ifma);
 }
 IFMA_LOCK_ASSERT_HELD(ifma);
 IFMA_ADDREF_LOCKED(ifma);
 lastref = if_detach_ifma(ifp, ifma, anon);
 VERIFY(!lastref || (!(ifma->ifma_debug & IFD_ATTACHED) &&
     ifma->ifma_reqcnt == 0));
 VERIFY(!anon || ifma->ifma_ll == ((void*)0));
 ll = ifma->ifma_ll;
 lladdr = (ifma->ifma_addr->sa_family == AF_UNSPEC ||
     ifma->ifma_addr->sa_family == AF_LINK);
 IFMA_UNLOCK(ifma);
 if (lastref && ll != ((void*)0)) {
  IFMA_LOCK(ll);
  ll_lastref = if_detach_ifma(ifp, ll, 0);
  IFMA_UNLOCK(ll);
 }
 ifnet_lock_done(ifp);

 if (lastref)
  rt_newmaddrmsg(RTM_DELMADDR, ifma);

 if ((ll == ((void*)0) && lastref && lladdr) || ll_lastref) {






  ifnet_ioctl(ifp, 0, SIOCDELMULTI, ((void*)0));
 }

 if (lastref)
  IFMA_REMREF(ifma);
 if (ll_lastref)
  IFMA_REMREF(ll);

 IFMA_REMREF(ifma);
 if (dupsa != ((void*)0))
  FREE(dupsa, M_IFADDR);

 return (0);
}
