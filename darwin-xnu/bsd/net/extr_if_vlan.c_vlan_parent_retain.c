
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct TYPE_3__ {scalar_t__ vlp_signature; scalar_t__ vlp_retain_count; } ;


 int OSIncrementAtomic (scalar_t__*) ;
 scalar_t__ VLP_SIGNATURE ;
 int panic (char*) ;

__attribute__((used)) static void
vlan_parent_retain(vlan_parent_ref vlp)
{
    if (vlp->vlp_signature != VLP_SIGNATURE) {
 panic("vlan_parent_retain: signature is bad\n");
    }
    if (vlp->vlp_retain_count == 0) {
 panic("vlan_parent_retain: retain count is 0\n");
    }
    OSIncrementAtomic(&vlp->vlp_retain_count);
}
