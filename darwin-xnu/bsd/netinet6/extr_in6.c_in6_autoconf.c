
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int ia6_flags; struct in6_ifaddr* ia_next; TYPE_1__ ia_ifa; } ;
struct ifnet {int if_flags; int if_eflags; } ;


 int EBUSY ;
 int EINVAL ;
 int IFA_ADDREF_LOCKED (TYPE_1__*) ;
 int IFA_LOCK (TYPE_1__*) ;
 int IFA_REMREF (TYPE_1__*) ;
 int IFA_UNLOCK (TYPE_1__*) ;
 int IFEF_ACCEPT_RTADV ;
 int IFEF_IPV6_ROUTER ;
 int IFF_LOOPBACK ;
 int IN6_IFF_AUTOCONF ;
 int VERIFY (int ) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int in6_ifaddr_rwlock ;
 struct in6_ifaddr* in6_ifaddrs ;
 int in6_purgeaddr (TYPE_1__*) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;

__attribute__((used)) static __attribute__((noinline)) int
in6_autoconf(struct ifnet *ifp, int enable)
{
 int error = 0;

 VERIFY(ifp != ((void*)0));

 if (ifp->if_flags & IFF_LOOPBACK)
  return (EINVAL);

 if (enable) {






  ifnet_lock_exclusive(ifp);
  if (ifp->if_eflags & IFEF_IPV6_ROUTER) {
   ifp->if_eflags &= ~IFEF_ACCEPT_RTADV;
   error = EBUSY;
  } else {
   ifp->if_eflags |= IFEF_ACCEPT_RTADV;
  }
  ifnet_lock_done(ifp);
 } else {
  struct in6_ifaddr *ia = ((void*)0);

  ifnet_lock_exclusive(ifp);
  ifp->if_eflags &= ~IFEF_ACCEPT_RTADV;
  ifnet_lock_done(ifp);


  lck_rw_lock_exclusive(&in6_ifaddr_rwlock);
  ia = in6_ifaddrs;
  while (ia != ((void*)0)) {
   if (ia->ia_ifa.ifa_ifp != ifp) {
    ia = ia->ia_next;
    continue;
   }
   IFA_LOCK(&ia->ia_ifa);
   if (ia->ia6_flags & IN6_IFF_AUTOCONF) {
    IFA_ADDREF_LOCKED(&ia->ia_ifa);
    IFA_UNLOCK(&ia->ia_ifa);
    lck_rw_done(&in6_ifaddr_rwlock);
    in6_purgeaddr(&ia->ia_ifa);
    IFA_REMREF(&ia->ia_ifa);
    lck_rw_lock_exclusive(&in6_ifaddr_rwlock);






    ia = in6_ifaddrs;
    continue;
   }
   IFA_UNLOCK(&ia->ia_ifa);
   ia = ia->ia_next;
  }
  lck_rw_done(&in6_ifaddr_rwlock);
 }
 return (error);
}
