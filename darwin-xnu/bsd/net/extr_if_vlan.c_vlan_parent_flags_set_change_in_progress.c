
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct TYPE_3__ {int vlp_flags; } ;


 int VLPF_CHANGE_IN_PROGRESS ;

__attribute__((used)) static __inline__ void
vlan_parent_flags_set_change_in_progress(vlan_parent_ref vlp)
{
    vlp->vlp_flags |= VLPF_CHANGE_IN_PROGRESS;
    return;
}
