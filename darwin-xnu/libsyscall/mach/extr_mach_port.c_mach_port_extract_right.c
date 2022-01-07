
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_extract_right (int ,int ,int ,int *,int *) ;

kern_return_t
mach_port_extract_right(
 ipc_space_t task,
 mach_port_name_t name,
 mach_msg_type_name_t msgt_name,
 mach_port_t *poly,
 mach_msg_type_name_t *polyPoly)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_extract_right(task, name, msgt_name,
  poly, polyPoly);

 return (rv);
}
