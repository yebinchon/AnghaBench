
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int mach_port_info_t ;
typedef int mach_port_flavor_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_set_attributes (int ,int ,int ,int ,int ) ;

kern_return_t
mach_port_set_attributes(
 ipc_space_t task,
 mach_port_name_t name,
 mach_port_flavor_t flavor,
 mach_port_info_t port_info,
 mach_msg_type_number_t port_infoCnt)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_set_attributes(task, name, flavor,
   port_info, port_infoCnt);

 return (rv);
}
