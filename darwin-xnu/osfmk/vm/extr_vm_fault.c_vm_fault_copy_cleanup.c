
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_object_t ;


 int PAGE_WAKEUP_DONE (int ) ;
 int VM_PAGE_OBJECT (int ) ;
 int VM_PAGE_PAGEABLE (int ) ;
 int vm_fault_cleanup (int ,int ) ;
 int vm_object_lock (int ) ;
 int vm_page_activate (int ) ;
 int vm_page_lockspin_queues () ;
 int vm_page_unlock_queues () ;

__attribute__((used)) static void
vm_fault_copy_cleanup(
 vm_page_t page,
 vm_page_t top_page)
{
 vm_object_t object = VM_PAGE_OBJECT(page);

 vm_object_lock(object);
 PAGE_WAKEUP_DONE(page);
 if ( !VM_PAGE_PAGEABLE(page)) {
  vm_page_lockspin_queues();
  if ( !VM_PAGE_PAGEABLE(page)) {
   vm_page_activate(page);
  }
  vm_page_unlock_queues();
 }
 vm_fault_cleanup(object, top_page);
}
