
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_pager_t ;
typedef scalar_t__ memory_object_t ;
struct TYPE_4__ {int * mo_pager_ops; } ;
struct TYPE_5__ {TYPE_1__ vn_pgr_hdr; } ;


 int assert (int) ;
 int vnode_pager_ops ;

vnode_pager_t
vnode_pager_lookup(
 memory_object_t name)
{
 vnode_pager_t vnode_object;

 vnode_object = (vnode_pager_t)name;
 assert(vnode_object->vn_pgr_hdr.mo_pager_ops == &vnode_pager_ops);
 return (vnode_object);
}
