
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_MACH_VM_PRESSURE ;
 int KERNEL_DEBUG_CONSTANT1 (unsigned int,int ,int ,int ,int ,int ) ;
 unsigned int MACHDBG_CODE (int ,unsigned int) ;
 scalar_t__ vm_debug_events ;
 int vm_page_active_count ;
 int vm_page_free_count ;
 int vm_page_inactive_count ;
 int vm_page_speculative_count ;
 int vm_page_throttled_count ;

void inline memoryshot(unsigned int event, unsigned int control)
{
 if (vm_debug_events) {
  KERNEL_DEBUG_CONSTANT1((MACHDBG_CODE(DBG_MACH_VM_PRESSURE, event)) | control,
     vm_page_active_count, vm_page_inactive_count,
     vm_page_free_count, vm_page_speculative_count,
     vm_page_throttled_count);
 } else {
  (void) event;
  (void) control;
 }

}
