
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 scalar_t__ IPC_PORT_VALID (int ) ;
 int ipc_port_release_send (int ) ;

__attribute__((used)) static void
host_release_special_port(mach_port_t mp)
{
 if (IPC_PORT_VALID(mp))
  ipc_port_release_send(mp);
}
