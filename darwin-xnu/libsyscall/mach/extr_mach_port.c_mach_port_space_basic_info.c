
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_info_space_basic_t ;


 int _kernelrpc_mach_port_space_basic_info (int ,int *) ;

kern_return_t
mach_port_space_basic_info(
 ipc_space_t task,
 ipc_info_space_basic_t *space_basic_info)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_space_basic_info(task, space_basic_info);

 return (rv);
}
