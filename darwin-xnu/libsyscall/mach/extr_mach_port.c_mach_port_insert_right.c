
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;


 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ _kernelrpc_mach_port_insert_right (int ,int ,int ,int ) ;
 scalar_t__ _kernelrpc_mach_port_insert_right_trap (int ,int ,int ,int ) ;

kern_return_t
mach_port_insert_right(
 ipc_space_t task,
 mach_port_name_t name,
 mach_port_t poly,
 mach_msg_type_name_t polyPoly)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_insert_right_trap(task, name, poly, polyPoly);

 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_port_insert_right(task, name, poly,
      polyPoly);

 return (rv);
}
