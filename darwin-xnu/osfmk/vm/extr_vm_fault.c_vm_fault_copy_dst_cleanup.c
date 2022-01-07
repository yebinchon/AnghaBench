
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_page_t ;
typedef int vm_object_t ;


 int TRUE ;
 scalar_t__ VM_PAGE_NULL ;
 int VM_PAGE_OBJECT (scalar_t__) ;
 int vm_object_lock (int ) ;
 int vm_object_paging_end (int ) ;
 int vm_object_unlock (int ) ;
 int vm_page_lockspin_queues () ;
 int vm_page_unlock_queues () ;
 int vm_page_unwire (scalar_t__,int ) ;

__attribute__((used)) static void
vm_fault_copy_dst_cleanup(
 vm_page_t page)
{
 vm_object_t object;

 if (page != VM_PAGE_NULL) {
  object = VM_PAGE_OBJECT(page);
  vm_object_lock(object);
  vm_page_lockspin_queues();
  vm_page_unwire(page, TRUE);
  vm_page_unlock_queues();
  vm_object_paging_end(object);
  vm_object_unlock(object);
 }
}
