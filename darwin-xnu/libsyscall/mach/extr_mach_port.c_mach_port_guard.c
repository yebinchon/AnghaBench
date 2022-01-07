
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ mach_port_context_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef int boolean_t ;


 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ _kernelrpc_mach_port_guard (int ,int ,int ,int ) ;
 scalar_t__ _kernelrpc_mach_port_guard_trap (int ,int ,int ,int ) ;

kern_return_t
mach_port_guard(
 ipc_space_t task,
 mach_port_name_t name,
 mach_port_context_t guard,
 boolean_t strict)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_guard_trap(task, name, (uint64_t) guard, strict);

 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_port_guard(task, name, (uint64_t) guard, strict);

 return (rv);

}
