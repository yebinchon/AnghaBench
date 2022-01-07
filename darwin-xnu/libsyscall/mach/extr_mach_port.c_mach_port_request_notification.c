
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int mach_port_name_t ;
typedef int mach_port_mscount_t ;
typedef int mach_msg_type_name_t ;
typedef int mach_msg_id_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_mach_port_request_notification (int ,int ,int ,int ,int ,int ,int *) ;

kern_return_t
mach_port_request_notification(
 ipc_space_t task,
 mach_port_name_t name,
 mach_msg_id_t msgid,
 mach_port_mscount_t sync,
 mach_port_t notify,
 mach_msg_type_name_t notifyPoly,
 mach_port_t *previous)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_port_request_notification(task, name, msgid,
  sync, notify, notifyPoly, previous);

 return (rv);
}
