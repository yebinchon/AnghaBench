
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_2__* vnode_pager_t ;
struct vnode {int dummy; } ;
typedef scalar_t__ memory_object_t ;
struct TYPE_3__ {int * mo_pager_ops; } ;
struct TYPE_4__ {struct vnode* vnode_handle; TYPE_1__ vn_pgr_hdr; } ;


 int vnode_pager_ops ;

struct vnode *
vnode_pager_lookup_vnode(
 memory_object_t name)
{
 vnode_pager_t vnode_object;
 vnode_object = (vnode_pager_t)name;
 if(vnode_object->vn_pgr_hdr.mo_pager_ops == &vnode_pager_ops)
  return (vnode_object->vnode_handle);
 else
  return ((void*)0);
}
