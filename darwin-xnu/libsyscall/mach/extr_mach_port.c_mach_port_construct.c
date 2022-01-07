
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mach_port_options_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ mach_port_context_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;


 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ _kernelrpc_mach_port_construct (int ,int *,int ,int *) ;
 scalar_t__ _kernelrpc_mach_port_construct_trap (int ,int *,int ,int *) ;

kern_return_t
mach_port_construct(
 ipc_space_t task,
 mach_port_options_t *options,
 mach_port_context_t context,
 mach_port_name_t *name)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_construct_trap(task, options, (uint64_t) context, name);

 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_port_construct(task, options, (uint64_t) context, name);

 return (rv);
}
