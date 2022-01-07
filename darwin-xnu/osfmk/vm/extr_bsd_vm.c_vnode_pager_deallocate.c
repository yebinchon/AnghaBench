
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_pager_t ;
typedef int memory_object_t ;
struct TYPE_4__ {int * vnode_handle; int ref_count; } ;


 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 scalar_t__ hw_atomic_sub (int *,int) ;
 TYPE_1__* vnode_pager_lookup (int ) ;
 int vnode_pager_vrele (int *) ;
 int vnode_pager_zone ;
 int zfree (int ,TYPE_1__*) ;

void
vnode_pager_deallocate(
 memory_object_t mem_obj)
{
 vnode_pager_t vnode_object;

 PAGER_DEBUG(PAGER_ALL, ("vnode_pager_deallocate: %p\n", mem_obj));

 vnode_object = vnode_pager_lookup(mem_obj);

 if (hw_atomic_sub(&vnode_object->ref_count, 1) == 0) {
  if (vnode_object->vnode_handle != ((void*)0)) {
   vnode_pager_vrele(vnode_object->vnode_handle);
  }
  zfree(vnode_pager_zone, vnode_object);
 }
 return;
}
