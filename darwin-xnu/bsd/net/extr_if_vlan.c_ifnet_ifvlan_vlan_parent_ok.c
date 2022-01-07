
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* ifvlan_ref ;
struct TYPE_5__ {scalar_t__ ifv_vlp; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* ifnet_get_ifvlan (struct ifnet*) ;
 scalar_t__ ifvlan_flags_detaching (TYPE_1__*) ;
 scalar_t__ vlan_parent_flags_detaching (scalar_t__) ;

__attribute__((used)) static int
ifnet_ifvlan_vlan_parent_ok(struct ifnet * ifp, ifvlan_ref ifv,
       vlan_parent_ref vlp)
{
    ifvlan_ref check_ifv;

    check_ifv = ifnet_get_ifvlan(ifp);
    if (check_ifv != ifv || ifvlan_flags_detaching(ifv)) {

 return (FALSE);
    }
    if (ifv->ifv_vlp != vlp) {

 return (FALSE);
    }
    if (vlan_parent_flags_detaching(vlp)) {

 return (FALSE);
    }
    return (TRUE);
}
