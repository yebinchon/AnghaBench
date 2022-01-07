
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct sockaddr_dl {int sdl_index; } ;
struct sockaddr {scalar_t__ sa_family; char* sa_data; } ;
struct TYPE_8__ {struct ifaddr* tqh_first; } ;
struct TYPE_7__ {struct ifnet* tqe_next; } ;
struct ifnet {unsigned int if_index; TYPE_2__ if_addrhead; TYPE_1__ if_link; } ;
struct TYPE_9__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_5__* ifa_netmask; TYPE_4__* ifa_addr; TYPE_3__ ifa_link; } ;
typedef int caddr_t ;
struct TYPE_12__ {struct ifnet* tqh_first; } ;
struct TYPE_11__ {char* sa_data; int sa_len; } ;
struct TYPE_10__ {scalar_t__ sa_family; char* sa_data; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_LINK ;
 int IFA_ADDREF (struct ifaddr*) ;
 int IFA_ADDREF_LOCKED (struct ifaddr*) ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_LOCK_ASSERT_NOTHELD (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 unsigned int IFSCOPE_NONE ;
 int if_index ;
 struct ifaddr** ifnet_addrs ;
 TYPE_6__ ifnet_head ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 scalar_t__ rn_refines (int ,int ) ;

__attribute__((used)) static struct ifaddr *
ifa_ifwithnet_common(const struct sockaddr *addr, unsigned int ifscope)
{
 struct ifnet *ifp;
 struct ifaddr *ifa = ((void*)0);
 struct ifaddr *ifa_maybe = ((void*)0);
 u_int af = addr->sa_family;
 const char *addr_data = addr->sa_data, *cplim;




 if (af != AF_INET)

  ifscope = IFSCOPE_NONE;

 ifnet_head_lock_shared();




 if (af == AF_LINK) {
  const struct sockaddr_dl *sdl =
      (const struct sockaddr_dl *)(uintptr_t)(size_t)addr;
  if (sdl->sdl_index && sdl->sdl_index <= if_index) {
   ifa = ifnet_addrs[sdl->sdl_index - 1];
   if (ifa != ((void*)0))
    IFA_ADDREF(ifa);

   ifnet_head_done();
   return (ifa);
  }
 }





 for (ifp = ifnet_head.tqh_first; ifp; ifp = ifp->if_link.tqe_next) {
  ifnet_lock_shared(ifp);
  for (ifa = ifp->if_addrhead.tqh_first; ifa;
       ifa = ifa->ifa_link.tqe_next) {
   const char *cp, *cp2, *cp3;

   IFA_LOCK(ifa);
   if (ifa->ifa_addr == ((void*)0) ||
       ifa->ifa_addr->sa_family != af) {
next:
    IFA_UNLOCK(ifa);
    continue;
   }




   if (ifscope != IFSCOPE_NONE &&
       ifp->if_index != ifscope) {
    IFA_UNLOCK(ifa);
    continue;
   }
   if (ifa->ifa_netmask == 0) {
    IFA_UNLOCK(ifa);
    continue;
   }
   cp = addr_data;
   cp2 = ifa->ifa_addr->sa_data;
   cp3 = ifa->ifa_netmask->sa_data;
   cplim = ifa->ifa_netmask->sa_len +
       (char *)ifa->ifa_netmask;
   while (cp3 < cplim)
    if ((*cp++ ^ *cp2++) & *cp3++)
     goto next;







   if (ifa_maybe == ((void*)0) ||
       rn_refines((caddr_t)ifa->ifa_netmask,
       (caddr_t)ifa_maybe->ifa_netmask)) {
    IFA_ADDREF_LOCKED(ifa);
    IFA_UNLOCK(ifa);
    if (ifa_maybe != ((void*)0))
     IFA_REMREF(ifa_maybe);
    ifa_maybe = ifa;
   } else {
    IFA_UNLOCK(ifa);
   }
   IFA_LOCK_ASSERT_NOTHELD(ifa);
  }
  ifnet_lock_done(ifp);

  if (ifa != ((void*)0))
   break;
 }
 ifnet_head_done();

 if (ifa == ((void*)0))
  ifa = ifa_maybe;
 else if (ifa_maybe != ((void*)0))
  IFA_REMREF(ifa_maybe);

 return (ifa);
}
