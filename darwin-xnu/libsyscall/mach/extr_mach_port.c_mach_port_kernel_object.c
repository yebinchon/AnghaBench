
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_kernel_object (int ,int ,unsigned int*,unsigned int*) ;

kern_return_t
mach_port_kernel_object(
 ipc_space_t task,
 mach_port_name_t name,
 unsigned *object_type,
 unsigned *object_addr)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_kernel_object(task, name,
   object_type, object_addr);

 return (rv);
}
