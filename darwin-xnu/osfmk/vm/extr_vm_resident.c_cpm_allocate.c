
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int vm_size_t ;
typedef scalar_t__ vm_page_t ;
typedef int ppnum_t ;
typedef int kern_return_t ;
typedef int event_t ;
typedef int boolean_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_NO_SPACE ;
 int KERN_SUCCESS ;
 unsigned int PAGE_SIZE ;
 int VM_CHECK_MEMORYSTATUS ;
 scalar_t__ VM_PAGE_NULL ;
 int assert (int ) ;
 int thread_wakeup (int ) ;
 scalar_t__ vm_page_find_contiguous (unsigned int,int ,int ,int ,int) ;
 scalar_t__ vm_page_free_count ;
 scalar_t__ vm_page_free_min ;
 int vm_page_free_wanted ;
 int vm_page_verify_contiguous (scalar_t__,unsigned int) ;

kern_return_t
cpm_allocate(
 vm_size_t size,
 vm_page_t *list,
 ppnum_t max_pnum,
 ppnum_t pnum_mask,
 boolean_t wire,
 int flags)
{
 vm_page_t pages;
 unsigned int npages;

 if (size % PAGE_SIZE != 0)
  return KERN_INVALID_ARGUMENT;

 npages = (unsigned int) (size / PAGE_SIZE);
 if (npages != size / PAGE_SIZE) {

  return KERN_INVALID_ARGUMENT;
 }






 pages = vm_page_find_contiguous(npages, max_pnum, pnum_mask, wire, flags);

 if (pages == VM_PAGE_NULL)
  return KERN_NO_SPACE;



 if (vm_page_free_count < vm_page_free_min)
         thread_wakeup((event_t) &vm_page_free_wanted);

 VM_CHECK_MEMORYSTATUS;





 assert(vm_page_verify_contiguous(pages, npages));

 *list = pages;
 return KERN_SUCCESS;
}
