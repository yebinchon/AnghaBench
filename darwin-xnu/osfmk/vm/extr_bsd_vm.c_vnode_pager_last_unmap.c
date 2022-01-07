
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_pager_t ;
typedef int memory_object_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int vnode_handle; } ;


 int KERN_SUCCESS ;
 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 int ubc_unmap (int ) ;
 TYPE_1__* vnode_pager_lookup (int ) ;

kern_return_t
vnode_pager_last_unmap(
 memory_object_t mem_obj)
{
 vnode_pager_t vnode_object;

 PAGER_DEBUG(PAGER_ALL, ("vnode_pager_last_unmap: %p\n", mem_obj));

 vnode_object = vnode_pager_lookup(mem_obj);

 ubc_unmap(vnode_object->vnode_handle);
 return KERN_SUCCESS;
}
