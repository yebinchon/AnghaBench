
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_page_t ;
typedef int vm_object_t ;


 int VM_PAGE_FREE (scalar_t__) ;
 scalar_t__ VM_PAGE_NULL ;
 int VM_PAGE_OBJECT (scalar_t__) ;
 int vm_object_lock (int ) ;
 int vm_object_paging_end (int ) ;
 int vm_object_unlock (int ) ;

void
vm_fault_cleanup(
 vm_object_t object,
 vm_page_t top_page)
{
 vm_object_paging_end(object);
  vm_object_unlock(object);

 if (top_page != VM_PAGE_NULL) {
         object = VM_PAGE_OBJECT(top_page);

  vm_object_lock(object);
  VM_PAGE_FREE(top_page);
  vm_object_paging_end(object);
  vm_object_unlock(object);
 }
}
