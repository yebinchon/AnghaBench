
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int pmap_paddr_t ;
typedef scalar_t__ kern_return_t ;
typedef int event_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {int vmp_busy; scalar_t__ vmp_pmapped; } ;


 scalar_t__ FALSE ;
 scalar_t__ KERN_MEMORY_ERROR ;
 scalar_t__ KERN_NOT_SUPPORTED ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PAGE_SIZE_64 ;
 scalar_t__ PHYSMAP_PTOV (int) ;
 int PMAP_ENTER (int ,scalar_t__,TYPE_1__*,int ,int ,int ,scalar_t__,scalar_t__) ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 scalar_t__ THREAD_WAITING ;
 scalar_t__ TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_INHERIT_NONE ;
 int VM_KERN_MEMORY_NONE ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_MAP_PAGE_MASK (int ) ;
 int VM_MAP_REMOVE_NO_FLAGS ;
 scalar_t__ VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 TYPE_1__* VM_PAGE_NULL ;
 int VM_PAGING_NUM_PAGES ;
 int VM_PROT_ALL ;
 int VM_PROT_NONE ;
 int assert (int) ;
 scalar_t__ assert_wait (int ,int ) ;
 int kasan_notify_address (scalar_t__,int) ;
 int kernel_map ;
 int kernel_pmap ;
 scalar_t__ phystokv (int) ;
 int printf (char*) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 scalar_t__ thread_block (int ) ;
 scalar_t__ vm_map_enter (int ,scalar_t__*,int,int ,int ,int ,int ,int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 scalar_t__ vm_map_remove (int ,scalar_t__,int,int ) ;
 int vm_map_round_page (int,int ) ;
 int vm_object_deallocate (int ) ;
 int vm_object_lock (int ) ;
 int vm_object_reference_locked (int ) ;
 scalar_t__ vm_object_trunc_page (scalar_t__) ;
 int vm_object_unlock (int ) ;
 TYPE_1__* vm_page_lookup (int ,scalar_t__) ;
 scalar_t__ vm_paging_base_address ;
 int vm_paging_lock ;
 int vm_paging_max_index ;
 int vm_paging_no_kernel_page ;
 int vm_paging_objects_mapped ;
 int vm_paging_objects_mapped_slow ;
 scalar_t__* vm_paging_page_inuse ;
 int vm_paging_page_waiter ;
 int vm_paging_page_waiter_total ;
 int vm_paging_pages_mapped ;
 unsigned long vm_paging_pages_mapped_slow ;

kern_return_t
vm_paging_map_object(
 vm_page_t page,
 vm_object_t object,
 vm_object_offset_t offset,
 vm_prot_t protection,
 boolean_t can_unlock_object,
 vm_map_size_t *size,
 vm_map_offset_t *address,
 boolean_t *need_unmap)
{
 kern_return_t kr;
 vm_map_offset_t page_map_offset;
 vm_map_size_t map_size;
 vm_object_offset_t object_offset;
 int i;

 if (page != VM_PAGE_NULL && *size == PAGE_SIZE) {


  *address = (vm_map_offset_t)
   PHYSMAP_PTOV((pmap_paddr_t)VM_PAGE_GET_PHYS_PAGE(page) <<
         PAGE_SHIFT);
  *need_unmap = FALSE;
  return KERN_SUCCESS;
  assert(page->vmp_busy);





  simple_lock(&vm_paging_lock);





  page_map_offset = 0;
  for (;;) {
   for (i = 0; i < VM_PAGING_NUM_PAGES; i++) {
    if (vm_paging_page_inuse[i] == FALSE) {
     page_map_offset =
      vm_paging_base_address +
      (i * PAGE_SIZE);
     break;
    }
   }
   if (page_map_offset != 0) {

    break;
   }

   if (can_unlock_object) {




    break;
   }




   vm_paging_page_waiter_total++;
   vm_paging_page_waiter++;
   kr = assert_wait((event_t)&vm_paging_page_waiter, THREAD_UNINT);
   if (kr == THREAD_WAITING) {
    simple_unlock(&vm_paging_lock);
    kr = thread_block(THREAD_CONTINUE_NULL);
    simple_lock(&vm_paging_lock);
   }
   vm_paging_page_waiter--;

  }

  if (page_map_offset != 0) {




   if (i > vm_paging_max_index) {
    vm_paging_max_index = i;
   }
   vm_paging_page_inuse[i] = TRUE;
   simple_unlock(&vm_paging_lock);

   page->vmp_pmapped = TRUE;







   PMAP_ENTER(kernel_pmap,
       page_map_offset,
       page,
       protection,
       VM_PROT_NONE,
       0,
       TRUE,
       kr);
   assert(kr == KERN_SUCCESS);
   vm_paging_objects_mapped++;
   vm_paging_pages_mapped++;
   *address = page_map_offset;
   *need_unmap = TRUE;






   return KERN_SUCCESS;
  }






  vm_paging_no_kernel_page++;
  simple_unlock(&vm_paging_lock);
 }

 if (! can_unlock_object) {
  *address = 0;
  *size = 0;
  *need_unmap = FALSE;
  return KERN_NOT_SUPPORTED;
 }

 object_offset = vm_object_trunc_page(offset);
 map_size = vm_map_round_page(*size,
         VM_MAP_PAGE_MASK(kernel_map));






 vm_object_reference_locked(object);
 vm_object_unlock(object);

 kr = vm_map_enter(kernel_map,
     address,
     map_size,
     0,
     VM_FLAGS_ANYWHERE,
     VM_MAP_KERNEL_FLAGS_NONE,
     VM_KERN_MEMORY_NONE,
     object,
     object_offset,
     FALSE,
     protection,
     VM_PROT_ALL,
     VM_INHERIT_NONE);
 if (kr != KERN_SUCCESS) {
  *address = 0;
  *size = 0;
  *need_unmap = FALSE;
  vm_object_deallocate(object);
  vm_object_lock(object);
  return kr;
 }

 *size = map_size;




 vm_object_lock(object);







 for (page_map_offset = 0;
      map_size != 0;
      map_size -= PAGE_SIZE_64, page_map_offset += PAGE_SIZE_64) {

  page = vm_page_lookup(object, offset + page_map_offset);
  if (page == VM_PAGE_NULL) {
   printf("vm_paging_map_object: no page !?");
   vm_object_unlock(object);
   kr = vm_map_remove(kernel_map, *address, *size,
        VM_MAP_REMOVE_NO_FLAGS);
   assert(kr == KERN_SUCCESS);
   *address = 0;
   *size = 0;
   *need_unmap = FALSE;
   vm_object_lock(object);
   return KERN_MEMORY_ERROR;
  }
  page->vmp_pmapped = TRUE;


  PMAP_ENTER(kernel_pmap,
      *address + page_map_offset,
      page,
      protection,
      VM_PROT_NONE,
      0,
      TRUE,
      kr);
  assert(kr == KERN_SUCCESS);



 }

 vm_paging_objects_mapped_slow++;
 vm_paging_pages_mapped_slow += (unsigned long) (map_size / PAGE_SIZE_64);

 *need_unmap = TRUE;

 return KERN_SUCCESS;
}
