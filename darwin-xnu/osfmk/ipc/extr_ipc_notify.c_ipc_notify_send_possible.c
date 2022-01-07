
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int ipc_port_t ;


 int mach_notify_send_possible (int ,int ) ;

void
ipc_notify_send_possible(
 ipc_port_t port,
 mach_port_name_t name)
{
 (void)mach_notify_send_possible(port, name);

}
