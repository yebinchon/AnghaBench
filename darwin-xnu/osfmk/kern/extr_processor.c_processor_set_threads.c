
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef scalar_t__* thread_array_t ;
typedef int processor_set_t ;
typedef size_t mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int PSET_THING_THREAD ;
 scalar_t__ convert_thread_to_port (scalar_t__) ;
 scalar_t__ processor_set_things (int ,void**,size_t*,int ) ;

kern_return_t
processor_set_threads(
 processor_set_t pset,
 thread_array_t *thread_list,
 mach_msg_type_number_t *count)
{
 kern_return_t ret;
 mach_msg_type_number_t i;

 ret = processor_set_things(pset, (void **)thread_list, count, PSET_THING_THREAD);
 if (ret != KERN_SUCCESS)
  return ret;


 for (i = 0; i < *count; i++)
  (*thread_list)[i] = (thread_t)convert_thread_to_port((*thread_list)[i]);
 return KERN_SUCCESS;
}
