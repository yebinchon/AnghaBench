
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int FALSE ;
 int ifnet_start_common (struct ifnet*,int ) ;

void
ifnet_start(struct ifnet *ifp)
{
 ifnet_start_common(ifp, FALSE);
}
