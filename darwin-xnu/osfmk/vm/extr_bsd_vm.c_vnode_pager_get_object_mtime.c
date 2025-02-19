
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_pager_t ;
struct timespec {int dummy; } ;
typedef TYPE_2__* memory_object_t ;
typedef int kern_return_t ;
struct TYPE_7__ {int * mo_pager_ops; } ;
struct TYPE_6__ {int vnode_handle; } ;


 int KERN_INVALID_ARGUMENT ;
 int vnode_pager_get_mtime (int ,struct timespec*,struct timespec*) ;
 TYPE_1__* vnode_pager_lookup (TYPE_2__*) ;
 int vnode_pager_ops ;

kern_return_t
vnode_pager_get_object_mtime(
 memory_object_t mem_obj,
 struct timespec *mtime,
 struct timespec *cs_mtime)
{
 vnode_pager_t vnode_object;

 if (mem_obj->mo_pager_ops != &vnode_pager_ops) {
  return KERN_INVALID_ARGUMENT;
 }

 vnode_object = vnode_pager_lookup(mem_obj);

 return vnode_pager_get_mtime(vnode_object->vnode_handle,
         mtime,
         cs_mtime);
}
