
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef scalar_t__ task_t ;
typedef int task_inspect_t ;
typedef scalar_t__ task_inspect_info_t ;
typedef int task_inspect_flavor_t ;
struct task_inspect_basic_counts {void* cycles; void* instructions; } ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_NOT_SUPPORTED ;
 scalar_t__ KERN_SUCCESS ;
 size_t MT_CORE_CYCLES ;
 size_t MT_CORE_INSTRS ;
 int MT_CORE_NFIXED ;

 int TASK_INSPECT_BASIC_COUNTS_COUNT ;
 scalar_t__ TASK_NULL ;
 int mt_fixed_task_counts (scalar_t__,void**) ;

kern_return_t
task_inspect(task_inspect_t task_insp, task_inspect_flavor_t flavor,
  task_inspect_info_t info_out, mach_msg_type_number_t *size_in_out)
{
#pragma unused(task_insp, flavor, info_out, size_in_out)
 return KERN_NOT_SUPPORTED;

}
