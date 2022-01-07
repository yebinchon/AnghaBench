
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_eflags; } ;
typedef scalar_t__ boolean_t ;


 int IFEF_IPV6_DISABLED ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;

int
nd6_if_disable(struct ifnet *ifp, boolean_t enable)
{
 ifnet_lock_shared(ifp);
 if (enable)
  ifp->if_eflags |= IFEF_IPV6_DISABLED;
 else
  ifp->if_eflags &= ~IFEF_IPV6_DISABLED;
 ifnet_lock_done(ifp);

 return (0);
}
