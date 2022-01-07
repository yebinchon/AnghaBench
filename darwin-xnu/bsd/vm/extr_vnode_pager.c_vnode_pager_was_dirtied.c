
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_offset_t ;
struct vnode {int dummy; } ;


 int TRUE ;
 int cluster_update_state (struct vnode*,int ,int ,int ) ;

void
vnode_pager_was_dirtied(
 struct vnode *vp,
 vm_object_offset_t s_offset,
 vm_object_offset_t e_offset)
{
        cluster_update_state(vp, s_offset, e_offset, TRUE);
}
