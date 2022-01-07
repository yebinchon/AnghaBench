
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; scalar_t__ sa_len; } ;
struct TYPE_3__ {struct ifaddr* tqh_first; } ;
struct ifnet {int if_flags; TYPE_1__ if_addrhead; } ;
struct TYPE_4__ {struct ifaddr* tqe_next; } ;
struct ifaddr {struct sockaddr const* ifa_broadaddr; struct sockaddr const* ifa_addr; TYPE_2__ ifa_link; } ;


 int IFA_ADDREF_LOCKED (struct ifaddr*) ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IFF_BROADCAST ;
 unsigned int IFSCOPE_NONE ;
 scalar_t__ if_index ;
 scalar_t__ ifa_equal (struct sockaddr const*,struct sockaddr const*) ;
 struct ifaddr* ifa_ifwithaddr_locked (struct sockaddr const*) ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;

struct ifaddr *
ifa_ifwithaddr_scoped_locked(const struct sockaddr *addr, unsigned int ifscope)
{
 struct ifaddr *result = ((void*)0);
 struct ifnet *ifp;

 if (ifscope == IFSCOPE_NONE)
  return (ifa_ifwithaddr_locked(addr));

 if (ifscope > (unsigned int)if_index) {
  return (((void*)0));
 }

 ifp = ifindex2ifnet[ifscope];
 if (ifp != ((void*)0)) {
  struct ifaddr *ifa = ((void*)0);






  ifnet_lock_shared(ifp);
  for (ifa = ifp->if_addrhead.tqh_first; ifa != ((void*)0);
      ifa = ifa->ifa_link.tqe_next) {
   IFA_LOCK_SPIN(ifa);
   if (ifa->ifa_addr->sa_family != addr->sa_family) {
    IFA_UNLOCK(ifa);
    continue;
   }
   if (ifa_equal(addr, ifa->ifa_addr)) {
    result = ifa;
    IFA_ADDREF_LOCKED(ifa);
    IFA_UNLOCK(ifa);
    break;
   }
   if ((ifp->if_flags & IFF_BROADCAST) &&
       ifa->ifa_broadaddr != ((void*)0) &&

       ifa->ifa_broadaddr->sa_len != 0 &&
       ifa_equal(ifa->ifa_broadaddr, addr)) {
    result = ifa;
    IFA_ADDREF_LOCKED(ifa);
    IFA_UNLOCK(ifa);
    break;
   }
   IFA_UNLOCK(ifa);
  }
  ifnet_lock_done(ifp);
 }

 return (result);
}
