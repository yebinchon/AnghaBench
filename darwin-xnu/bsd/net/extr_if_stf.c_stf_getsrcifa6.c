
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_7__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_3__* ifa_addr; TYPE_2__ ifa_list; } ;
struct TYPE_9__ {scalar_t__ s_addr; } ;
struct TYPE_10__ {TYPE_4__ sin_addr; } ;
struct in_ifaddr {struct ifaddr ia_ifa; TYPE_5__ ia_addr; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct in6_ifaddr {int dummy; } ;
struct TYPE_6__ {struct ifaddr* tqh_first; } ;
struct ifnet {TYPE_1__ if_addrlist; } ;
typedef int in ;
struct TYPE_8__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int GET_V4 (int *) ;
 int IFA_ADDREF (struct ifaddr*) ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IN6_IS_ADDR_6TO4 (int *) ;
 struct in_ifaddr* TAILQ_FIRST (int *) ;
 struct in_ifaddr* TAILQ_NEXT (struct in_ifaddr*,int ) ;
 int bcopy (int ,struct in_addr*,int) ;
 int ia_link ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 int in_ifaddr_rwlock ;
 int in_ifaddrhead ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;

__attribute__((used)) static struct in6_ifaddr *
stf_getsrcifa6(struct ifnet *ifp)
{
 struct ifaddr *ia;
 struct in_ifaddr *ia4;
 struct sockaddr_in6 *sin6;
 struct in_addr in;

 ifnet_lock_shared(ifp);
 for (ia = ifp->if_addrlist.tqh_first; ia; ia = ia->ifa_list.tqe_next) {
  IFA_LOCK(ia);
  if (ia->ifa_addr == ((void*)0)) {
   IFA_UNLOCK(ia);
   continue;
  }
  if (ia->ifa_addr->sa_family != AF_INET6) {
   IFA_UNLOCK(ia);
   continue;
  }
  sin6 = (struct sockaddr_in6 *)(void *)ia->ifa_addr;
  if (!IN6_IS_ADDR_6TO4(&sin6->sin6_addr)) {
   IFA_UNLOCK(ia);
   continue;
  }
  bcopy(GET_V4(&sin6->sin6_addr), &in, sizeof(in));
  IFA_UNLOCK(ia);
  lck_rw_lock_shared(in_ifaddr_rwlock);
  for (ia4 = TAILQ_FIRST(&in_ifaddrhead);
       ia4;
       ia4 = TAILQ_NEXT(ia4, ia_link))
  {
   IFA_LOCK(&ia4->ia_ifa);
   if (ia4->ia_addr.sin_addr.s_addr == in.s_addr) {
    IFA_UNLOCK(&ia4->ia_ifa);
    break;
   }
   IFA_UNLOCK(&ia4->ia_ifa);
  }
  lck_rw_done(in_ifaddr_rwlock);
  if (ia4 == ((void*)0))
   continue;

  IFA_ADDREF(ia);
  ifnet_lock_done(ifp);
  return ((struct in6_ifaddr *)ia);
 }
 ifnet_lock_done(ifp);

 return (((void*)0));
}
