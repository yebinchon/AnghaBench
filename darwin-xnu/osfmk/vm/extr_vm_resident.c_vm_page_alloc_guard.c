
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_page_t ;
typedef int vm_object_t ;
typedef int vm_object_offset_t ;


 scalar_t__ VM_PAGE_NULL ;
 int vm_object_lock_assert_exclusive (int ) ;
 scalar_t__ vm_page_grab_guard () ;
 int vm_page_insert (scalar_t__,int ,int ) ;

vm_page_t
vm_page_alloc_guard(
 vm_object_t object,
 vm_object_offset_t offset)
{
 vm_page_t mem;

 vm_object_lock_assert_exclusive(object);
 mem = vm_page_grab_guard();
 if (mem == VM_PAGE_NULL)
  return VM_PAGE_NULL;

 vm_page_insert(mem, object, offset);

 return(mem);
}
