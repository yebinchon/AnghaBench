
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_type_t ;
typedef int ipc_kobject_t ;
typedef scalar_t__ io_object_t ;


 scalar_t__ FALSE ;
 scalar_t__ IP_NULL ;
 int assert (int) ;
 int gIOKitPortCount ;
 int ip_lock (scalar_t__) ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 scalar_t__ ipc_port_make_sonce_locked (scalar_t__) ;
 int ipc_port_nsrequest (scalar_t__,int,scalar_t__,scalar_t__*) ;

ipc_port_t
iokit_alloc_object_port( io_object_t obj, ipc_kobject_type_t type )
{
    ipc_port_t notify;
    ipc_port_t port;

    do {


        port = ipc_port_alloc_kernel();
        if( port == IP_NULL)
            continue;


 ipc_kobject_set( port, (ipc_kobject_t) obj, type);


        ip_lock( port);
        notify = ipc_port_make_sonce_locked( port);
        ipc_port_nsrequest( port, 1, notify, &notify);

        assert( notify == IP_NULL);
 gIOKitPortCount++;

    } while( FALSE);

    return( port );
}
