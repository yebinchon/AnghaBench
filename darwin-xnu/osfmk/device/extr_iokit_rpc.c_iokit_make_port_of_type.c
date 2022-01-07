
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_type_t ;
typedef int * io_object_t ;


 scalar_t__ IP_NULL ;
 scalar_t__ iokit_port_for_object (int *,int ) ;
 int iokit_release_port (scalar_t__) ;
 int iokit_remove_reference (int *) ;
 scalar_t__ ipc_port_make_send (scalar_t__) ;

__attribute__((used)) static ipc_port_t
iokit_make_port_of_type(io_object_t obj, ipc_kobject_type_t type)
{
    ipc_port_t port;
    ipc_port_t sendPort;

    if( obj == ((void*)0))
        return IP_NULL;

    port = iokit_port_for_object( obj, type );
    if( port) {
 sendPort = ipc_port_make_send( port);
 iokit_release_port( port );
    } else
 sendPort = IP_NULL;

    iokit_remove_reference( obj );

    return( sendPort);
}
