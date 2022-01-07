
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct TYPE_3__ {int vlp_vlan_list; } ;


 int LIST_EMPTY (int *) ;

__attribute__((used)) static __inline__ int
vlan_parent_no_vlans(vlan_parent_ref vlp)
{
    return (LIST_EMPTY(&vlp->vlp_vlan_list));
}
