
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int vm_map_size_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ vm_address_t ;
typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ recover; } ;


 int ARM64_CLINE_SHIFT ;
 int CleanPoU_DcacheRegion (int,int ) ;
 int InvalidatePoU_Icache () ;
 int InvalidatePoU_IcacheRegion (int,int ) ;
 int MACH_VM_MAX_ADDRESS ;
 int VM_MAX_ADDRESS ;
 int cache_trap_error (TYPE_1__*,int) ;
 scalar_t__ cache_trap_recover ;
 int current_task () ;
 TYPE_1__* current_thread () ;
 scalar_t__ task_has_64Bit_addr (int ) ;

__attribute__((used)) static void
icache_invalidate_trap(vm_map_address_t start, vm_map_size_t size)
{
 vm_map_address_t end = start + size;
 thread_t thread = current_thread();
 vm_offset_t old_recover = thread->recover;


 if (task_has_64Bit_addr(current_task())) {
  if (end > MACH_VM_MAX_ADDRESS) {
   cache_trap_error(thread, end & ((1 << ARM64_CLINE_SHIFT) - 1));
  }
 } else {
  if (end > VM_MAX_ADDRESS) {
   cache_trap_error(thread, end & ((1 << ARM64_CLINE_SHIFT) - 1));
  }
 }

 if (start > end) {
  cache_trap_error(thread, start & ((1 << ARM64_CLINE_SHIFT) - 1));
 }


 thread->recover = (vm_address_t)cache_trap_recover;

 CleanPoU_DcacheRegion(start, (uint32_t) size);





 InvalidatePoU_Icache();



 thread->recover = old_recover;


}
