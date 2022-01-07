
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_pager_t ;
typedef int memory_object_t ;
struct TYPE_3__ {int ref_count; } ;


 int assert (int) ;
 unsigned int hw_atomic_add (int *,int) ;
 TYPE_1__* vnode_pager_lookup (int ) ;

void
vnode_pager_reference(
 memory_object_t mem_obj)
{
 vnode_pager_t vnode_object;
 unsigned int new_ref_count;

 vnode_object = vnode_pager_lookup(mem_obj);
 new_ref_count = hw_atomic_add(&vnode_object->ref_count, 1);
 assert(new_ref_count > 1);
}
