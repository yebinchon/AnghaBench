
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int natural_t ;
typedef int mach_vm_address_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_kobject (int ,int ,int *,int *) ;

kern_return_t
mach_port_kobject(
 ipc_space_t task,
 mach_port_name_t name,
 natural_t *object_type,
 mach_vm_address_t *object_addr)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_kobject(task, name, object_type, object_addr);

 return (rv);
}
