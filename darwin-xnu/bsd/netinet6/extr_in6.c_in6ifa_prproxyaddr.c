
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_ifaddr {int ia_ifa; struct in6_ifaddr* ia_next; } ;
struct in6_addr {int dummy; } ;


 int IFA_ADDREF_LOCKED (int *) ;
 int IFA_IN6 (int *) ;
 int IFA_LOCK (int *) ;
 int IFA_REMREF (int *) ;
 int IFA_UNLOCK (int *) ;
 scalar_t__ IN6_ARE_ADDR_EQUAL (struct in6_addr*,int ) ;
 int in6_ifaddr_rwlock ;
 struct in6_ifaddr* in6_ifaddrs ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int nd6_prproxy_ifaddr (struct in6_ifaddr*) ;

struct in6_ifaddr *
in6ifa_prproxyaddr(struct in6_addr *addr)
{
 struct in6_ifaddr *ia;

 lck_rw_lock_shared(&in6_ifaddr_rwlock);
 for (ia = in6_ifaddrs; ia; ia = ia->ia_next) {
  IFA_LOCK(&ia->ia_ifa);
  if (IN6_ARE_ADDR_EQUAL(addr, IFA_IN6(&ia->ia_ifa))) {
   IFA_ADDREF_LOCKED(&ia->ia_ifa);
   IFA_UNLOCK(&ia->ia_ifa);
   break;
  }
  IFA_UNLOCK(&ia->ia_ifa);
 }
 lck_rw_done(&in6_ifaddr_rwlock);

 if (ia != ((void*)0) && !nd6_prproxy_ifaddr(ia)) {
  IFA_REMREF(&ia->ia_ifa);
  ia = ((void*)0);
 }

 return (ia);
}
