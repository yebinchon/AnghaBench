
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_dnrequest_info (int ,int ,unsigned int*,unsigned int*) ;

kern_return_t
mach_port_dnrequest_info(
 ipc_space_t task,
 mach_port_name_t name,
 unsigned *dnr_total,
 unsigned *dnr_used)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_dnrequest_info(task, name, dnr_total,
   dnr_used);

 return (rv);
}
