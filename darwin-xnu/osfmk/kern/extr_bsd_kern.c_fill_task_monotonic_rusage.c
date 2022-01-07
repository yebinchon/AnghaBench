
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef scalar_t__ task_t ;
struct TYPE_3__ {void* ri_cycles; void* ri_instructions; } ;
typedef TYPE_1__ rusage_info_current ;


 size_t MT_CORE_CYCLES ;
 size_t MT_CORE_INSTRS ;
 int MT_CORE_NFIXED ;
 scalar_t__ TASK_NULL ;
 int assert (int) ;
 int mt_core_supported ;
 int mt_fixed_task_counts (scalar_t__,void**) ;

void
fill_task_monotonic_rusage(task_t task, rusage_info_current *ri)
{
#pragma unused(task, ri)

}
