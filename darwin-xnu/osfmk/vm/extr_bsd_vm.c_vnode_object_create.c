
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct vnode_pager* vnode_pager_t ;
struct TYPE_2__ {int mo_control; int * mo_pager_ops; int mo_ikot; } ;
struct vnode_pager {int ref_count; struct vnode* vnode_handle; TYPE_1__ vn_pgr_hdr; } ;
struct vnode {int dummy; } ;


 int IKOT_MEMORY_OBJECT ;
 int MEMORY_OBJECT_CONTROL_NULL ;
 struct vnode_pager* VNODE_PAGER_NULL ;
 int vnode_pager_ops ;
 int vnode_pager_zone ;
 scalar_t__ zalloc (int ) ;

vnode_pager_t
vnode_object_create(
        struct vnode *vp)
{
 vnode_pager_t vnode_object;

 vnode_object = (struct vnode_pager *) zalloc(vnode_pager_zone);
 if (vnode_object == VNODE_PAGER_NULL)
  return(VNODE_PAGER_NULL);
 vnode_object->vn_pgr_hdr.mo_ikot = IKOT_MEMORY_OBJECT;
 vnode_object->vn_pgr_hdr.mo_pager_ops = &vnode_pager_ops;
 vnode_object->vn_pgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;

 vnode_object->ref_count = 1;
 vnode_object->vnode_handle = vp;

 return(vnode_object);
}
