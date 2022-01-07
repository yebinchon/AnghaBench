
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_object_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_MAP_REMOVE_NO_FLAGS ;
 scalar_t__ VM_OBJECT_NULL ;
 scalar_t__ VM_PAGING_NUM_PAGES ;
 int assert (int) ;
 int kernel_map ;
 int kernel_pmap ;
 int pmap_remove (int ,scalar_t__,scalar_t__) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_wakeup (scalar_t__*) ;
 scalar_t__ vm_map_remove (int ,scalar_t__,scalar_t__,int ) ;
 int vm_object_lock (scalar_t__) ;
 int vm_object_unlock (scalar_t__) ;
 scalar_t__ vm_paging_base_address ;
 int vm_paging_lock ;
 int * vm_paging_page_inuse ;
 scalar_t__ vm_paging_page_waiter ;

void
vm_paging_unmap_object(
 vm_object_t object,
 vm_map_offset_t start,
 vm_map_offset_t end)
{
 kern_return_t kr;
 int i;

 if ((vm_paging_base_address == 0) ||
     (start < vm_paging_base_address) ||
     (end > (vm_paging_base_address
       + (VM_PAGING_NUM_PAGES * PAGE_SIZE)))) {





  if (object != VM_OBJECT_NULL) {
   vm_object_unlock(object);
  }
  kr = vm_map_remove(kernel_map, start, end,
       VM_MAP_REMOVE_NO_FLAGS);
  if (object != VM_OBJECT_NULL) {
   vm_object_lock(object);
  }
  assert(kr == KERN_SUCCESS);
 } else {





  assert(end - start == PAGE_SIZE);
  i = (int) ((start - vm_paging_base_address) >> PAGE_SHIFT);
  assert(i >= 0 && i < VM_PAGING_NUM_PAGES);


  pmap_remove(kernel_pmap, start, end);

  simple_lock(&vm_paging_lock);
  vm_paging_page_inuse[i] = FALSE;
  if (vm_paging_page_waiter) {
   thread_wakeup(&vm_paging_page_waiter);
  }
  simple_unlock(&vm_paging_lock);
 }
}
