
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_object_t ;
typedef int memory_object_t ;
typedef TYPE_2__* fourk_pager_t ;
struct TYPE_4__ {scalar_t__ mo_control; } ;
struct TYPE_5__ {scalar_t__ ref_count; TYPE_1__ fourk_pgr_hdr; } ;


 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 scalar_t__ VM_OBJECT_NULL ;
 int assert (int) ;
 TYPE_2__* fourk_pager_lookup (int ) ;
 scalar_t__ memory_object_control_to_vm_object (scalar_t__) ;

vm_object_t
fourk_pager_to_vm_object(
 memory_object_t mem_obj)
{
 fourk_pager_t pager;
 vm_object_t object;

 pager = fourk_pager_lookup(mem_obj);
 if (pager == ((void*)0)) {
  return VM_OBJECT_NULL;
 }

 assert(pager->ref_count > 0);
 assert(pager->fourk_pgr_hdr.mo_control != MEMORY_OBJECT_CONTROL_NULL);
 object = memory_object_control_to_vm_object(pager->fourk_pgr_hdr.mo_control);
 assert(object != VM_OBJECT_NULL);
 return object;
}
