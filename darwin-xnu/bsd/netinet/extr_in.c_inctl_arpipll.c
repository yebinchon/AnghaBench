
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_intval; } ;
struct ifnet {int if_eflags; } ;
typedef int intval ;


 int EBUSY ;
 int IFEF_ARPLL ;
 int IFEF_IPV4_ROUTER ;
 int VERIFY (int ) ;
 int bcopy (int *,int*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int ipv4_ll_arp_aware ;

__attribute__((used)) static __attribute__((noinline)) int
inctl_arpipll(struct ifnet *ifp, struct ifreq *ifr)
{
 int error = 0, intval;

 VERIFY(ifp != ((void*)0));

 bcopy(&ifr->ifr_intval, &intval, sizeof (intval));
 ipv4_ll_arp_aware = 1;

 ifnet_lock_exclusive(ifp);
 if (intval) {






  if (ifp->if_eflags & IFEF_IPV4_ROUTER) {
   intval = 0;
   error = EBUSY;
  } else {
   ifp->if_eflags |= IFEF_ARPLL;
  }
 }
 if (!intval)
  ifp->if_eflags &= ~IFEF_ARPLL;
 ifnet_lock_done(ifp);

 return (error);
}
