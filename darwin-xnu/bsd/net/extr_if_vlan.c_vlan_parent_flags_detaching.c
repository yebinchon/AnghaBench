
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_parent {int vlp_flags; } ;


 int VLPF_DETACHING ;

__attribute__((used)) static __inline__ int
vlan_parent_flags_detaching(struct vlan_parent * vlp)
{
    return ((vlp->vlp_flags & VLPF_DETACHING) != 0);
}
