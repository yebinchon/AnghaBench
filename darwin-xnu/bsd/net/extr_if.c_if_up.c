
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int if_updown (struct ifnet*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;

void
if_up(
 struct ifnet *ifp)
{
 ifnet_lock_exclusive(ifp);
 if_updown(ifp, 1);
 ifnet_lock_done(ifp);
}
