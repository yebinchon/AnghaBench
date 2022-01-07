
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef scalar_t__ ifvlan_ref ;


 scalar_t__ ifnet_softc (struct ifnet*) ;

__attribute__((used)) static ifvlan_ref
ifnet_get_ifvlan(struct ifnet * ifp)
{
    ifvlan_ref ifv;

    ifv = (ifvlan_ref)ifnet_softc(ifp);
    return (ifv);
}
