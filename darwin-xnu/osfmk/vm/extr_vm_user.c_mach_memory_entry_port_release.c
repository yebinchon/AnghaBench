
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;


 scalar_t__ IKOT_NAMED_ENTRY ;
 int assert (int) ;
 scalar_t__ ip_kotype (int ) ;
 int ipc_port_release_send (int ) ;

void
mach_memory_entry_port_release(
 ipc_port_t port)
{
 assert(ip_kotype(port) == IKOT_NAMED_ENTRY);
 ipc_port_release_send(port);
}
