
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;


 int FALSE ;
 int IPC_PORT_ADJUST_SR_NONE ;
 int ipc_port_adjust_special_reply_port (int ,int ,int ) ;
 int mach_notify_send_once (int ) ;

void
ipc_notify_send_once(
 ipc_port_t port)
{
 ipc_port_adjust_special_reply_port(port, IPC_PORT_ADJUST_SR_NONE, FALSE);

 (void)mach_notify_send_once(port);

}
