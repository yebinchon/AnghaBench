
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ FALSE ;
 int KDP_FAULT_RESULT_FAULTED_IN ;
 int KDP_FAULT_RESULT_PAGED_OUT ;
 int KDP_FAULT_RESULT_TRIED_FAULT ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PHYSMAP_PTOV (scalar_t__) ;
 scalar_t__ atop (scalar_t__) ;
 int kThreadFaultedBT ;
 int kThreadTriedFaultBT ;
 int kThreadTruncatedBT ;
 int kasan_notify_address (scalar_t__,int) ;
 scalar_t__ kdp_find_phys (int ,scalar_t__,int ,int*) ;
 scalar_t__ phystokv (scalar_t__) ;
 scalar_t__ prev_target_kva ;
 scalar_t__ prev_target_page ;
 int stack_enable_faulting ;
 scalar_t__ validate_next_addr ;

vm_offset_t
machine_trace_thread_get_kva(vm_offset_t cur_target_addr, vm_map_t map, uint32_t *thread_trace_flags)
{
 vm_offset_t cur_target_page;
 vm_offset_t cur_phys_addr;
 vm_offset_t kern_virt_target_addr;
 uint32_t kdp_fault_results = 0;

 cur_target_page = atop(cur_target_addr);

 if ((cur_target_page != prev_target_page) || validate_next_addr) {
  cur_phys_addr = kdp_find_phys(map, cur_target_addr, stack_enable_faulting, &kdp_fault_results);
  if (thread_trace_flags) {
   if (kdp_fault_results & KDP_FAULT_RESULT_PAGED_OUT) {
    *thread_trace_flags |= kThreadTruncatedBT;
   }

   if (kdp_fault_results & KDP_FAULT_RESULT_TRIED_FAULT) {
    *thread_trace_flags |= kThreadTriedFaultBT;
   }

   if (kdp_fault_results & KDP_FAULT_RESULT_FAULTED_IN) {
    *thread_trace_flags |= kThreadFaultedBT;
   }
  }

  if (cur_phys_addr == 0) {
   return 0;
  }

  kern_virt_target_addr = (vm_offset_t) PHYSMAP_PTOV(cur_phys_addr);





  prev_target_page = cur_target_page;
  prev_target_kva = (kern_virt_target_addr & ~PAGE_MASK);
  validate_next_addr = FALSE;
 } else {

  kern_virt_target_addr = prev_target_kva + (cur_target_addr & PAGE_MASK);
 }




 return kern_virt_target_addr;
}
