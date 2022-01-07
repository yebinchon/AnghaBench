
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_ifinfo {int flags; int lock; scalar_t__ initialized; } ;
struct ifnet {int if_flags; int if_eflags; } ;


 int ENODEV ;
 int FALSE ;
 int IFEF_IPV6_ROUTER ;
 int IFF_LOOPBACK ;
 int ND6_IFF_PROXY_PREFIXES ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 int VERIFY (int ) ;
 int defrouter_select (struct ifnet*) ;
 int if_allmulti (struct ifnet*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int in6_autoconf (struct ifnet*,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nd6_if_prproxy (struct ifnet*,int ) ;
 int * nd6_mutex ;

__attribute__((used)) static __attribute__((noinline)) int
in6_setrouter(struct ifnet *ifp, int enable)
{
 VERIFY(ifp != ((void*)0));

 if (ifp->if_flags & IFF_LOOPBACK)
  return (ENODEV);

 if (enable) {
  struct nd_ifinfo *ndi = ((void*)0);

  ndi = ND_IFINFO(ifp);
  if (ndi != ((void*)0) && ndi->initialized) {
   lck_mtx_lock(&ndi->lock);
   if (ndi->flags & ND6_IFF_PROXY_PREFIXES) {

    ndi->flags &= ~ND6_IFF_PROXY_PREFIXES;
    lck_mtx_unlock(&ndi->lock);
    (void) nd6_if_prproxy(ifp, FALSE);
   } else {
    lck_mtx_unlock(&ndi->lock);
   }
  }
 }

 ifnet_lock_exclusive(ifp);
 if (enable) {
  ifp->if_eflags |= IFEF_IPV6_ROUTER;
 } else {
  ifp->if_eflags &= ~IFEF_IPV6_ROUTER;
 }
 ifnet_lock_done(ifp);

 lck_mtx_lock(nd6_mutex);
 defrouter_select(ifp);
 lck_mtx_unlock(nd6_mutex);

 if_allmulti(ifp, enable);

 return (in6_autoconf(ifp, FALSE));
}
