
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ifnet_purge (struct ifnet*) ;

void
ifp_if_start(struct ifnet *ifp)
{
 ifnet_purge(ifp);
}
