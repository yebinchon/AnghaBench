
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct TYPE_3__ {int vlp_flags; } ;


 int VLPF_SUPPORTS_VLAN_MTU ;

__attribute__((used)) static __inline__ int
vlan_parent_flags_supports_vlan_mtu(vlan_parent_ref vlp)
{
    return ((vlp->vlp_flags & VLPF_SUPPORTS_VLAN_MTU) != 0);
}
