
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* processor_t ;
typedef scalar_t__ processor_array_t ;
typedef scalar_t__ mach_port_t ;
typedef unsigned int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int * host_priv_t ;
struct TYPE_4__ {struct TYPE_4__* processor_list; } ;


 int * HOST_PRIV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int assert (int) ;
 int convert_processor_to_port (TYPE_1__*) ;
 void* kalloc (int ) ;
 unsigned int processor_count ;
 TYPE_1__* processor_list ;
 int processor_list_lock ;
 int realhost ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;

kern_return_t
host_processors(host_priv_t host_priv, processor_array_t * out_array, mach_msg_type_number_t * countp)
{
 processor_t processor, *tp;
 void * addr;
 unsigned int count, i;

 if (host_priv == HOST_PRIV_NULL)
  return (KERN_INVALID_ARGUMENT);

 assert(host_priv == &realhost);

 count = processor_count;
 assert(count != 0);

 addr = kalloc((vm_size_t)(count * sizeof(mach_port_t)));
 if (addr == 0)
  return (KERN_RESOURCE_SHORTAGE);

 tp = (processor_t *)addr;
 *tp++ = processor = processor_list;

 if (count > 1) {
  simple_lock(&processor_list_lock);

  for (i = 1; i < count; i++)
   *tp++ = processor = processor->processor_list;

  simple_unlock(&processor_list_lock);
 }

 *countp = count;
 *out_array = (processor_array_t)addr;


 tp = (processor_t *)addr;
 for (i = 0; i < count; i++)
  ((mach_port_t *)tp)[i] = (mach_port_t)convert_processor_to_port(tp[i]);

 return (KERN_SUCCESS);
}
