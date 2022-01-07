
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_intval; } ;
struct ifnet {int if_eflags; } ;
typedef int intval ;


 int EBUSY ;
 int IFEF_AUTOCONFIGURING ;
 int IFEF_IPV4_ROUTER ;
 int VERIFY (int ) ;
 int bcopy (int *,int*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;

__attribute__((used)) static __attribute__((noinline)) int
inctl_autoaddr(struct ifnet *ifp, struct ifreq *ifr)
{
 int error = 0, intval;

 VERIFY(ifp != ((void*)0));

 bcopy(&ifr->ifr_intval, &intval, sizeof (intval));

 ifnet_lock_exclusive(ifp);
 if (intval) {






  if (ifp->if_eflags & IFEF_IPV4_ROUTER) {
   intval = 0;
   error = EBUSY;
  } else {
   ifp->if_eflags |= IFEF_AUTOCONFIGURING;
  }
 }
 if (!intval)
  ifp->if_eflags &= ~IFEF_AUTOCONFIGURING;
 ifnet_lock_done(ifp);

 return (error);
}
