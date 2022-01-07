
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_pager_t ;
typedef TYPE_2__* memory_object_t ;
typedef int memory_object_offset_t ;
typedef int kern_return_t ;
struct TYPE_7__ {int * mo_pager_ops; } ;
struct TYPE_6__ {int vnode_handle; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int vnode_pager_get_filesize (int ) ;
 TYPE_1__* vnode_pager_lookup (TYPE_2__*) ;
 int vnode_pager_ops ;

kern_return_t
vnode_pager_get_object_size(
 memory_object_t mem_obj,
 memory_object_offset_t *length)
{
 vnode_pager_t vnode_object;

 if (mem_obj->mo_pager_ops != &vnode_pager_ops) {
  *length = 0;
  return KERN_INVALID_ARGUMENT;
 }

 vnode_object = vnode_pager_lookup(mem_obj);

 *length = vnode_pager_get_filesize(vnode_object->vnode_handle);
 return KERN_SUCCESS;
}
