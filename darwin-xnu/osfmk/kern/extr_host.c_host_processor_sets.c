
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ processor_set_name_array_t ;
typedef scalar_t__ processor_set_array_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef scalar_t__ host_priv_t ;


 scalar_t__ HOST_PRIV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int convert_pset_name_to_port (int *) ;
 void* kalloc (int ) ;
 int pset0 ;

kern_return_t
host_processor_sets(host_priv_t host_priv, processor_set_name_array_t * pset_list, mach_msg_type_number_t * count)
{
 void * addr;

 if (host_priv == HOST_PRIV_NULL)
  return (KERN_INVALID_ARGUMENT);






 addr = kalloc((vm_size_t)sizeof(mach_port_t));
 if (addr == 0)
  return (KERN_RESOURCE_SHORTAGE);


 *((ipc_port_t *)addr) = convert_pset_name_to_port(&pset0);

 *pset_list = (processor_set_array_t)addr;
 *count = 1;

 return (KERN_SUCCESS);
}
