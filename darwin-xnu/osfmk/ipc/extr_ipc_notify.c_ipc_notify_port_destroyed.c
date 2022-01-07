
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;


 int mach_notify_port_destroyed (int ,int ) ;

void
ipc_notify_port_destroyed(
 ipc_port_t port,
 ipc_port_t right)
{
 mach_notify_port_destroyed(port, right);

}
