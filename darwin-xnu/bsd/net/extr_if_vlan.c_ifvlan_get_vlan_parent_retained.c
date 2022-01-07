
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vlan_parent_ref ;
typedef TYPE_1__* ifvlan_ref ;
struct TYPE_3__ {int * ifv_vlp; } ;


 scalar_t__ vlan_parent_flags_detaching (int *) ;
 int vlan_parent_retain (int *) ;

__attribute__((used)) static vlan_parent_ref
ifvlan_get_vlan_parent_retained(ifvlan_ref ifv)
{
    vlan_parent_ref vlp = ifv->ifv_vlp;

    if (vlp == ((void*)0) || vlan_parent_flags_detaching(vlp)) {
 return (((void*)0));
    }
    vlan_parent_retain(vlp);
    return (vlp);
}
