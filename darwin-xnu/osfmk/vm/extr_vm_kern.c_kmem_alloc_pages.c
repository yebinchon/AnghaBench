
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
typedef scalar_t__ vm_object_size_t ;
typedef int vm_object_offset_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int vmp_busy; } ;


 int FALSE ;
 int KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE ;
 TYPE_1__* VM_PAGE_NULL ;
 int VM_PAGE_WAIT () ;
 int vm_object_lock (int ) ;
 scalar_t__ vm_object_round_page (scalar_t__) ;
 int vm_object_unlock (int ) ;
 TYPE_1__* vm_page_alloc (int ,int ) ;

kern_return_t
kmem_alloc_pages(
 vm_object_t object,
 vm_object_offset_t offset,
 vm_object_size_t size)
{
 vm_object_size_t alloc_size;

 alloc_size = vm_object_round_page(size);
        vm_object_lock(object);
 while (alloc_size) {
     vm_page_t mem;





     while (VM_PAGE_NULL ==
    (mem = vm_page_alloc(object, offset))) {
  vm_object_unlock(object);
  VM_PAGE_WAIT();
  vm_object_lock(object);
     }
     mem->vmp_busy = FALSE;

     alloc_size -= PAGE_SIZE;
     offset += PAGE_SIZE;
 }
 vm_object_unlock(object);
 return KERN_SUCCESS;
}
