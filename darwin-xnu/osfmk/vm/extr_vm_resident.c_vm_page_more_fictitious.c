
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int KMA_KOBJECT ;
 int KMA_NOPAGEWAIT ;
 int PAGE_SIZE ;
 int THREAD_UNINT ;
 int VM_KERN_MEMORY_ZONE ;
 int c_vm_page_more_fictitious ;
 scalar_t__ kernel_memory_allocate (int ,int *,int ,int ,int,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int vm_page_alloc_lock ;
 int vm_page_wait (int ) ;
 int vm_page_zone ;
 int zcram (int ,int ,int ) ;
 int zone_free_count (int ) ;
 int zone_map ;

void vm_page_more_fictitious(void)
{
 vm_offset_t addr;
 kern_return_t retval;

 c_vm_page_more_fictitious++;
 lck_mtx_lock(&vm_page_alloc_lock);



 if (zone_free_count(vm_page_zone) > 5) {
  lck_mtx_unlock(&vm_page_alloc_lock);
  return;
 }

 retval = kernel_memory_allocate(zone_map,
     &addr, PAGE_SIZE, 0,
     KMA_KOBJECT|KMA_NOPAGEWAIT, VM_KERN_MEMORY_ZONE);
 if (retval != KERN_SUCCESS) {





  lck_mtx_unlock(&vm_page_alloc_lock);
  vm_page_wait(THREAD_UNINT);
  return;
 }

 zcram(vm_page_zone, addr, PAGE_SIZE);

 lck_mtx_unlock(&vm_page_alloc_lock);
}
