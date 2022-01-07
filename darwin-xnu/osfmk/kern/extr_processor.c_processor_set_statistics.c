
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * processor_set_t ;
typedef TYPE_1__* processor_set_load_info_t ;
typedef scalar_t__ processor_set_info_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_2__ {int thread_count; int task_count; int load_average; int mach_factor; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_PROCESSOR_SET ;
 int KERN_SUCCESS ;
 int PROCESSOR_SET_LOAD_INFO ;
 scalar_t__ PROCESSOR_SET_LOAD_INFO_COUNT ;
 int * PROCESSOR_SET_NULL ;
 int pset0 ;
 int sched_load_average ;
 int sched_mach_factor ;
 int tasks_count ;
 int threads_count ;

kern_return_t
processor_set_statistics(
 processor_set_t pset,
 int flavor,
 processor_set_info_t info,
 mach_msg_type_number_t *count)
{
 if (pset == PROCESSOR_SET_NULL || pset != &pset0)
  return (KERN_INVALID_PROCESSOR_SET);

 if (flavor == PROCESSOR_SET_LOAD_INFO) {
  processor_set_load_info_t load_info;

  if (*count < PROCESSOR_SET_LOAD_INFO_COUNT)
   return(KERN_FAILURE);

  load_info = (processor_set_load_info_t) info;

  load_info->mach_factor = sched_mach_factor;
  load_info->load_average = sched_load_average;

  load_info->task_count = tasks_count;
  load_info->thread_count = threads_count;

  *count = PROCESSOR_SET_LOAD_INFO_COUNT;
  return(KERN_SUCCESS);
 }

 return(KERN_INVALID_ARGUMENT);
}
