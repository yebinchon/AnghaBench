
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_pager_t ;
typedef int vm_prot_t ;
typedef int memory_object_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int vnode_handle; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 int ubc_map (int ,int ) ;
 TYPE_1__* vnode_pager_lookup (int ) ;

kern_return_t
vnode_pager_map(
 memory_object_t mem_obj,
 vm_prot_t prot)
{
 vnode_pager_t vnode_object;
 int ret;
 kern_return_t kr;

 PAGER_DEBUG(PAGER_ALL, ("vnode_pager_map: %p %x\n", mem_obj, prot));

 vnode_object = vnode_pager_lookup(mem_obj);

 ret = ubc_map(vnode_object->vnode_handle, prot);

 if (ret != 0) {
  kr = KERN_FAILURE;
 } else {
  kr = KERN_SUCCESS;
 }

 return kr;
}
