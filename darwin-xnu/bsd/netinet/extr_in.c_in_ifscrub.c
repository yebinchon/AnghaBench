
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifaddr {int ia_flags; int ia_ifa; } ;
struct ifnet {int if_flags; } ;


 int IFA_LOCK (int *) ;
 int IFA_ROUTE ;
 int IFA_UNLOCK (int *) ;
 int IFF_LOOPBACK ;
 int IFF_POINTOPOINT ;
 int RTF_HOST ;
 scalar_t__ RTM_DELETE ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int rtinit_locked (int *,int,int ) ;

void
in_ifscrub(struct ifnet *ifp, struct in_ifaddr *ia, int locked)
{
 IFA_LOCK(&ia->ia_ifa);
 if ((ia->ia_flags & IFA_ROUTE) == 0) {
  IFA_UNLOCK(&ia->ia_ifa);
  return;
 }
 IFA_UNLOCK(&ia->ia_ifa);
 if (!locked)
  lck_mtx_lock(rnh_lock);
 if (ifp->if_flags & (IFF_LOOPBACK|IFF_POINTOPOINT))
  rtinit_locked(&(ia->ia_ifa), (int)RTM_DELETE, RTF_HOST);
 else
  rtinit_locked(&(ia->ia_ifa), (int)RTM_DELETE, 0);
 IFA_LOCK(&ia->ia_ifa);
 ia->ia_flags &= ~IFA_ROUTE;
 IFA_UNLOCK(&ia->ia_ifa);
 if (!locked)
  lck_mtx_unlock(rnh_lock);
}
