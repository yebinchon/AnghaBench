
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_type_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_type (int ,int ,int *) ;

kern_return_t
mach_port_type(
 ipc_space_t task,
 mach_port_name_t name,
 mach_port_type_t *ptype)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_type(task, name, ptype);

 return (rv);
}
