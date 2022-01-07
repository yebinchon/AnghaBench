
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int ipc_port_t ;


 int IKOT_NONE ;
 int IKO_NULL ;
 int KERN_SUCCESS ;
 int gIOKitPortCount ;
 int iokit_lock_port (int ) ;
 int iokit_unlock_port (int ) ;
 int ipc_kobject_set (int ,int ,int ) ;
 int ipc_port_dealloc_kernel (int ) ;

kern_return_t
iokit_destroy_object_port( ipc_port_t port )
{

    iokit_lock_port(port);
    ipc_kobject_set( port, IKO_NULL, IKOT_NONE);


    iokit_unlock_port(port);
    ipc_port_dealloc_kernel( port);
    gIOKitPortCount--;

    return( KERN_SUCCESS);
}
