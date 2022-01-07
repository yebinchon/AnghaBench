
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;


 int ipc_port_reference (int ) ;

void
iokit_retain_port( ipc_port_t port )
{
    ipc_port_reference( port );
}
