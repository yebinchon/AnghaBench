
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;
typedef int io_object_t ;


 int IKOT_IOKIT_OBJECT ;
 int iokit_lookup_io_object (int ,int ) ;

io_object_t
iokit_lookup_object_port(
 ipc_port_t port)
{
    return (iokit_lookup_io_object(port, IKOT_IOKIT_OBJECT));
}
