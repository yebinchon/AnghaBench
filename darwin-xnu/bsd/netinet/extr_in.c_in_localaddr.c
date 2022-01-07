
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {struct in_ifaddr* tqe_next; } ;
struct in_ifaddr {int ia_netmask; int ia_net; int ia_subnetmask; int ia_subnet; int ia_ifa; TYPE_1__ ia_link; } ;
struct in_addr {int s_addr; } ;
struct TYPE_4__ {struct in_ifaddr* tqh_first; } ;


 int IFA_LOCK (int *) ;
 int IFA_UNLOCK (int *) ;
 scalar_t__ IN_LINKLOCAL (int) ;
 int in_ifaddr_rwlock ;
 TYPE_2__ in_ifaddrhead ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int ntohl (int ) ;
 scalar_t__ subnetsarelocal ;

int
in_localaddr(struct in_addr in)
{
 u_int32_t i = ntohl(in.s_addr);
 struct in_ifaddr *ia;

 if (IN_LINKLOCAL(i))
  return (1);

 if (subnetsarelocal) {
  lck_rw_lock_shared(in_ifaddr_rwlock);
  for (ia = in_ifaddrhead.tqh_first; ia != ((void*)0);
      ia = ia->ia_link.tqe_next) {
   IFA_LOCK(&ia->ia_ifa);
   if ((i & ia->ia_netmask) == ia->ia_net) {
    IFA_UNLOCK(&ia->ia_ifa);
    lck_rw_done(in_ifaddr_rwlock);
    return (1);
   }
   IFA_UNLOCK(&ia->ia_ifa);
  }
  lck_rw_done(in_ifaddr_rwlock);
 } else {
  lck_rw_lock_shared(in_ifaddr_rwlock);
  for (ia = in_ifaddrhead.tqh_first; ia != ((void*)0);
      ia = ia->ia_link.tqe_next) {
   IFA_LOCK(&ia->ia_ifa);
   if ((i & ia->ia_subnetmask) == ia->ia_subnet) {
    IFA_UNLOCK(&ia->ia_ifa);
    lck_rw_done(in_ifaddr_rwlock);
    return (1);
   }
   IFA_UNLOCK(&ia->ia_ifa);
  }
  lck_rw_done(in_ifaddr_rwlock);
 }
 return (0);
}
