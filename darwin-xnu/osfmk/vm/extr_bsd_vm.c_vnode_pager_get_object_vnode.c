
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_pager_t ;
typedef scalar_t__ uint32_t ;
typedef int memory_object_t ;
typedef int kern_return_t ;
struct TYPE_3__ {scalar_t__ vnode_handle; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 TYPE_1__* vnode_pager_lookup (int ) ;
 scalar_t__ vnode_vid (void*) ;

kern_return_t
vnode_pager_get_object_vnode (
 memory_object_t mem_obj,
 uintptr_t * vnodeaddr,
 uint32_t * vid)
{
 vnode_pager_t vnode_object;

 vnode_object = vnode_pager_lookup(mem_obj);
 if (vnode_object->vnode_handle) {
  *vnodeaddr = (uintptr_t)vnode_object->vnode_handle;
  *vid = (uint32_t)vnode_vid((void *)vnode_object->vnode_handle);

  return(KERN_SUCCESS);
 }

 return(KERN_FAILURE);
}
