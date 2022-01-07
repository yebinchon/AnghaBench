
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
typedef TYPE_2__* ifvlan_ref ;
struct TYPE_7__ {int ifv_tag; TYPE_1__* ifv_vlp; } ;
struct TYPE_6__ {int vlp_vlan_list; } ;


 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int ifv_vlan_list ;

__attribute__((used)) static void
vlan_parent_add_vlan(vlan_parent_ref vlp, ifvlan_ref ifv, int tag)
{
    LIST_INSERT_HEAD(&vlp->vlp_vlan_list, ifv, ifv_vlan_list);
    ifv->ifv_vlp = vlp;
    ifv->ifv_tag = tag;
    return;
}
