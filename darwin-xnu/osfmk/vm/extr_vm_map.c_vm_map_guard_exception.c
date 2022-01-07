
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef int uint64_t ;
typedef int mach_exception_data_type_t ;
typedef int mach_exception_code_t ;


 int EXC_GUARD_ENCODE_FLAVOR (int ,unsigned int) ;
 int EXC_GUARD_ENCODE_TARGET (int ,unsigned int) ;
 int EXC_GUARD_ENCODE_TYPE (int ,unsigned int) ;
 unsigned int GUARD_TYPE_VIRT_MEMORY ;
 scalar_t__ current_task () ;
 int current_thread () ;
 scalar_t__ kernel_task ;
 int thread_guard_violation (int ,int ,int ) ;

__attribute__((used)) static void
vm_map_guard_exception(
 vm_map_offset_t gap_start,
 unsigned reason)
{
 mach_exception_code_t code = 0;
 unsigned int guard_type = GUARD_TYPE_VIRT_MEMORY;
 unsigned int target = 0;
 mach_exception_data_type_t subcode = (uint64_t)gap_start;


 if (current_task() == kernel_task)
  return;

 EXC_GUARD_ENCODE_TYPE(code, guard_type);
 EXC_GUARD_ENCODE_FLAVOR(code, reason);
 EXC_GUARD_ENCODE_TARGET(code, target);
 thread_guard_violation(current_thread(), code, subcode);
}
