
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {TYPE_1__ ia_ifa; struct in6_ifaddr* ia_next; } ;
struct ifnet {int dummy; } ;


 int IFA_ADDREF (TYPE_1__*) ;
 int IFA_REMREF (TYPE_1__*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int in6_ifaddr_rwlock ;
 struct in6_ifaddr* in6_ifaddrs ;
 int in6_ifdetach (struct ifnet*) ;
 int in6_purgeaddr (TYPE_1__*) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int nd6_mutex ;

void
in6_purgeif(struct ifnet *ifp)
{
 struct in6_ifaddr *ia;

 if (ifp == ((void*)0))
  return;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

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

 in6_ifdetach(ifp);
}
