
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * s6_addr16; } ;
struct TYPE_10__ {TYPE_3__ sin6_addr; } ;
struct nd_prefix {int ndpr_plen; TYPE_2__ ndpr_prefix; struct ifnet* ndpr_ifp; } ;
struct TYPE_12__ {struct ifnet* ifa_ifp; } ;
struct TYPE_9__ {int sin6_addr; } ;
struct in6_ifaddr {struct in6_ifaddr* ia_next; TYPE_4__ ia_ifa; TYPE_1__ ia_addr; } ;
struct ifnet {int dummy; } ;
typedef int pr0 ;


 int IFA_ADDREF_LOCKED (TYPE_4__*) ;
 int IFA_LOCK (TYPE_4__*) ;
 int IFA_REMREF (TYPE_4__*) ;
 int IFA_UNLOCK (TYPE_4__*) ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (int *) ;
 int IPV6_ADDR_INT16_ULL ;
 int ND6_PREFIX_EXPIRY_UNSPEC ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_REMREF (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int VERIFY (int ) ;
 int bzero (struct nd_prefix*,int) ;
 int in6_ifaddr_rwlock ;
 struct in6_ifaddr* in6_ifaddrs ;
 int in6_purgeaddr (TYPE_4__*) ;
 int in6_setscope (TYPE_3__*,struct ifnet*,int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int nd6_mutex ;
 struct nd_prefix* nd6_prefix_lookup (struct nd_prefix*,int ) ;
 int prelist_remove (struct nd_prefix*) ;

__attribute__((used)) static __attribute__((noinline)) int
in6ctl_llstop(struct ifnet *ifp)
{
 struct in6_ifaddr *ia;
 struct nd_prefix pr0, *pr;

 VERIFY(ifp != ((void*)0));


 lck_rw_lock_exclusive(&in6_ifaddr_rwlock);
 ia = in6_ifaddrs;
 while (ia != ((void*)0)) {
  if (ia->ia_ifa.ifa_ifp != ifp) {
   ia = ia->ia_next;
   continue;
  }
  IFA_LOCK(&ia->ia_ifa);
  if (IN6_IS_ADDR_LINKLOCAL(&ia->ia_addr.sin6_addr)) {
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


 bzero(&pr0, sizeof(pr0));
 pr0.ndpr_plen = 64;
 pr0.ndpr_ifp = ifp;
 pr0.ndpr_prefix.sin6_addr.s6_addr16[0] = IPV6_ADDR_INT16_ULL;
 in6_setscope(&pr0.ndpr_prefix.sin6_addr, ifp, ((void*)0));
 pr = nd6_prefix_lookup(&pr0, ND6_PREFIX_EXPIRY_UNSPEC);
 if (pr) {
  lck_mtx_lock(nd6_mutex);
  NDPR_LOCK(pr);
  prelist_remove(pr);
  NDPR_UNLOCK(pr);
  NDPR_REMREF(pr);
  lck_mtx_unlock(nd6_mutex);
 }

 return (0);
}
