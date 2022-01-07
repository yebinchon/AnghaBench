
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int * if_label; } ;


 int mac_ifnet_label_free (int *) ;

void
mac_ifnet_label_destroy(struct ifnet *ifp)
{

 mac_ifnet_label_free(ifp->if_label);
 ifp->if_label = ((void*)0);
}
