
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int * ifvlan_ref ;


 int * ifnet_get_ifvlan (struct ifnet*) ;
 scalar_t__ ifvlan_flags_detaching (int *) ;
 int ifvlan_retain (int *) ;

__attribute__((used)) static ifvlan_ref
ifnet_get_ifvlan_retained(struct ifnet * ifp)
{
    ifvlan_ref ifv;

    ifv = ifnet_get_ifvlan(ifp);
    if (ifv == ((void*)0)) {
 return (((void*)0));
    }
    if (ifvlan_flags_detaching(ifv)) {
 return (((void*)0));
    }
    ifvlan_retain(ifv);
    return (ifv);
}
