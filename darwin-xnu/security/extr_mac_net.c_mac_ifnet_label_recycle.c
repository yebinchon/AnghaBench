
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_label; } ;


 int MAC_PERFORM (int ,int ) ;
 int ifnet_label_recycle ;

void
mac_ifnet_label_recycle(struct ifnet *ifp)
{

 MAC_PERFORM(ifnet_label_recycle, ifp->if_label);
}
