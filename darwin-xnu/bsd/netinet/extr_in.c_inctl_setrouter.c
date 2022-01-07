
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_intval; } ;
struct ifnet {int if_flags; int if_eflags; } ;
typedef int intval ;


 int ENODEV ;
 int IFEF_ARPLL ;
 int IFEF_AUTOCONFIGURING ;
 int IFEF_IPV4_ROUTER ;
 int IFF_LOOPBACK ;
 int VERIFY (int ) ;
 int bcopy (int *,int*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int in_purgeaddrs (struct ifnet*) ;

__attribute__((used)) static __attribute__((noinline)) int
inctl_setrouter(struct ifnet *ifp, struct ifreq *ifr)
{
 int error = 0, intval;

 VERIFY(ifp != ((void*)0));


 if (ifp->if_flags & IFF_LOOPBACK)
  return (ENODEV);

 bcopy(&ifr->ifr_intval, &intval, sizeof (intval));

 ifnet_lock_exclusive(ifp);
 if (intval) {
  ifp->if_eflags |= IFEF_IPV4_ROUTER;
  ifp->if_eflags &= ~(IFEF_ARPLL | IFEF_AUTOCONFIGURING);
 } else {
  ifp->if_eflags &= ~IFEF_IPV4_ROUTER;
 }
 ifnet_lock_done(ifp);


 in_purgeaddrs(ifp);

 return (error);
}
