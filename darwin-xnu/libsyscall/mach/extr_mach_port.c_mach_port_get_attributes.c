
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


 int MACH_SEND_INVALID_DEST ;
 int _kernelrpc_mach_port_get_attributes (int ,int ,int ,int ,int *) ;
 int _kernelrpc_mach_port_get_attributes_trap (int ,int ,int ,int ,int *) ;

kern_return_t
mach_port_get_attributes(
 ipc_space_t task,
 mach_port_name_t name,
 mach_port_flavor_t flavor,
 mach_port_info_t port_info_out,
 mach_msg_type_number_t *port_info_outCnt)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_get_attributes_trap(task, name, flavor,
   port_info_out, port_info_outCnt);



 if (rv == ((1 << 24) | 40))
  rv = MACH_SEND_INVALID_DEST;






 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_port_get_attributes(task, name, flavor,
    port_info_out, port_info_outCnt);

 return (rv);
}
