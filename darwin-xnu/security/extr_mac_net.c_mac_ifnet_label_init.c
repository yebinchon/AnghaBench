
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_label; } ;


 int mac_ifnet_label_alloc () ;

void
mac_ifnet_label_init(struct ifnet *ifp)
{

 ifp->if_label = mac_ifnet_label_alloc();
}
