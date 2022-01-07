
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef int vm_object_offset_t ;
typedef scalar_t__ ppnum_t ;
typedef int kern_return_t ;
struct TYPE_16__ {int vo_shadow_offset; scalar_t__ vo_size; scalar_t__ paging_offset; int phys_contiguous; int private; } ;
struct TYPE_15__ {void* vmp_busy; void* vmp_unusual; void* vmp_fictitious; void* vmp_private; scalar_t__ vmp_pmapped; } ;


 void* FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 void* TRUE ;
 scalar_t__ VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 TYPE_1__* VM_PAGE_NULL ;
 int VM_PAGE_SET_PHYS_PAGE (TYPE_1__*,scalar_t__) ;
 int panic (char*,TYPE_1__*) ;
 int pmap_disconnect (scalar_t__) ;
 int trunc_page_64 (int) ;
 int vm_object_lock (TYPE_2__*) ;
 int vm_object_unlock (TYPE_2__*) ;
 TYPE_1__* vm_page_grab_fictitious () ;
 scalar_t__ vm_page_guard_addr ;
 int vm_page_insert (TYPE_1__*,TYPE_2__*,int) ;
 int vm_page_lockspin_queues () ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,int) ;
 int vm_page_more_fictitious () ;
 int vm_page_unlock_queues () ;

kern_return_t
vm_object_populate_with_private(
  vm_object_t object,
  vm_object_offset_t offset,
  ppnum_t phys_page,
  vm_size_t size)
{
 ppnum_t base_page;
 vm_object_offset_t base_offset;


 if (!object->private)
  return KERN_FAILURE;

 base_page = phys_page;

 vm_object_lock(object);

 if (!object->phys_contiguous) {
  vm_page_t m;

  if ((base_offset = trunc_page_64(offset)) != offset) {
   vm_object_unlock(object);
   return KERN_FAILURE;
  }
  base_offset += object->paging_offset;

  while (size) {
   m = vm_page_lookup(object, base_offset);

   if (m != VM_PAGE_NULL) {
    if (m->vmp_fictitious) {
     if (VM_PAGE_GET_PHYS_PAGE(m) != vm_page_guard_addr) {

      vm_page_lockspin_queues();
      m->vmp_private = TRUE;
      vm_page_unlock_queues();

      m->vmp_fictitious = FALSE;
      VM_PAGE_SET_PHYS_PAGE(m, base_page);
     }
    } else if (VM_PAGE_GET_PHYS_PAGE(m) != base_page) {

            if ( !m->vmp_private) {



      panic("vm_object_populate_with_private - %p not private", m);
     }
     if (m->vmp_pmapped) {



             pmap_disconnect(VM_PAGE_GET_PHYS_PAGE(m));
     }
     VM_PAGE_SET_PHYS_PAGE(m, base_page);
    }

   } else {
    while ((m = vm_page_grab_fictitious()) == VM_PAGE_NULL)
                   vm_page_more_fictitious();





    m->vmp_private = TRUE;
    m->vmp_fictitious = FALSE;
    VM_PAGE_SET_PHYS_PAGE(m, base_page);
    m->vmp_unusual = TRUE;
    m->vmp_busy = FALSE;

        vm_page_insert(m, object, base_offset);
   }
   base_page++;
   base_offset += PAGE_SIZE;
   size -= PAGE_SIZE;
  }
 } else {
  object->vo_shadow_offset = (vm_object_offset_t)phys_page << PAGE_SHIFT;
  object->vo_size = size;
 }
 vm_object_unlock(object);

 return KERN_SUCCESS;
}
