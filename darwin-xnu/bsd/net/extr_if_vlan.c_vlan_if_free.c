
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int * ifvlan_ref ;


 int ifnet_release (struct ifnet*) ;
 scalar_t__ ifnet_softc (struct ifnet*) ;
 int ifvlan_release (int *) ;

__attribute__((used)) static void
vlan_if_free(struct ifnet * ifp)
{
    ifvlan_ref ifv;

    if (ifp == ((void*)0)) {
 return;
    }
    ifv = (ifvlan_ref)ifnet_softc(ifp);
    if (ifv == ((void*)0)) {
 return;
    }
    ifvlan_release(ifv);
    ifnet_release(ifp);
    return;
}
