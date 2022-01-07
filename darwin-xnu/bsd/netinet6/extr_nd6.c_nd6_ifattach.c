
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_ifinfo {int lock; int flags; scalar_t__ initialized; } ;
struct ifnet {int if_flags; } ;


 int IFF_MULTICAST ;
 int LOG_INFO ;
 int ND6_IFF_DAD ;
 int ND6_IFF_IFDISABLED ;
 int ND6_IFF_PERFORMNUD ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 int if_name (struct ifnet*) ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nd6_ifreset (struct ifnet*) ;
 int nd6_setmtu (struct ifnet*) ;
 int nd6log0 (int ) ;
 int nd_if_lock_attr ;
 int nd_if_lock_grp ;

void
nd6_ifattach(struct ifnet *ifp)
{
 struct nd_ifinfo *ndi = ND_IFINFO(ifp);

 VERIFY(((void*)0) != ndi);
 if (!ndi->initialized) {
  lck_mtx_init(&ndi->lock, nd_if_lock_grp, nd_if_lock_attr);
  ndi->flags = ND6_IFF_PERFORMNUD;
  ndi->flags |= ND6_IFF_DAD;
  ndi->initialized = TRUE;
 }

 lck_mtx_lock(&ndi->lock);

 if (!(ifp->if_flags & IFF_MULTICAST)) {
  ndi->flags |= ND6_IFF_IFDISABLED;
 }

 nd6_ifreset(ifp);
 lck_mtx_unlock(&ndi->lock);
 nd6_setmtu(ifp);

 nd6log0((LOG_INFO, ": ",
     "%s Reinit'd ND information for interface %s\n",
     if_name(ifp)));
 return;
}
