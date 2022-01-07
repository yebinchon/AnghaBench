
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef int ipc_kobject_type_t ;
typedef int ipc_kobject_t ;
typedef scalar_t__ io_object_t ;


 int KERN_SUCCESS ;
 int iokit_lock_port (int ) ;
 int iokit_unlock_port (int ) ;
 int ipc_kobject_set (int ,int ,int ) ;

kern_return_t
iokit_switch_object_port( ipc_port_t port, io_object_t obj, ipc_kobject_type_t type )
{
    iokit_lock_port(port);
    ipc_kobject_set( port, (ipc_kobject_t) obj, type);
    iokit_unlock_port(port);

    return( KERN_SUCCESS);
}
