
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ mach_port_mscount_t ;
struct TYPE_20__ {scalar_t__ msgh_remote_port; } ;
struct TYPE_21__ {scalar_t__ not_count; TYPE_1__ not_header; } ;
typedef TYPE_2__ mach_no_senders_notification_t ;
typedef TYPE_3__* ipc_port_t ;
typedef int ipc_kobject_type_t ;
typedef int * io_object_t ;
struct TYPE_22__ {scalar_t__ ip_kobject; } ;


 int IKOT_IOKIT_CONNECT ;
 int IKOT_IOKIT_IDENT ;
 int IKOT_IOKIT_OBJECT ;
 int IKOT_NONE ;
 TYPE_3__* IP_NULL ;
 scalar_t__ IP_VALID (TYPE_3__*) ;
 scalar_t__ KERN_SUCCESS ;
 int iokit_add_reference (int *,int ) ;
 scalar_t__ iokit_client_died (int *,TYPE_3__*,int ,scalar_t__*) ;
 int iokit_lock_port (TYPE_3__*) ;
 int iokit_remove_reference (int *) ;
 int iokit_unlock_port (TYPE_3__*) ;
 scalar_t__ ip_active (TYPE_3__*) ;
 int ip_kotype (TYPE_3__*) ;
 int ip_lock (TYPE_3__*) ;
 int ip_unlock (TYPE_3__*) ;
 TYPE_3__* ipc_port_make_sonce_locked (TYPE_3__*) ;
 int ipc_port_nsrequest (TYPE_3__*,scalar_t__,TYPE_3__*,TYPE_3__**) ;
 int ipc_port_release_sonce (TYPE_3__*) ;

__attribute__((used)) static void
iokit_no_senders( mach_no_senders_notification_t * notification )
{
    ipc_port_t port;
    io_object_t obj = ((void*)0);
    ipc_kobject_type_t type = IKOT_NONE;
    ipc_port_t notify;

    port = (ipc_port_t) notification->not_header.msgh_remote_port;


    if( IP_VALID(port)) {
        iokit_lock_port(port);
        if( ip_active(port)) {
            obj = (io_object_t) port->ip_kobject;
     type = ip_kotype( port );
            if( (IKOT_IOKIT_OBJECT == type)
      || (IKOT_IOKIT_CONNECT == type)
      || (IKOT_IOKIT_IDENT == type))
                iokit_add_reference( obj, IKOT_IOKIT_OBJECT );
            else
                obj = ((void*)0);
 }
        iokit_unlock_port(port);

        if( obj ) {

     mach_port_mscount_t mscount = notification->not_count;

            if( KERN_SUCCESS != iokit_client_died( obj, port, type, &mscount ))
     {

  ip_lock(port);
  if (ip_active(port)) {
   notify = ipc_port_make_sonce_locked(port);
   ipc_port_nsrequest( port, mscount + 1, notify, &notify);

   if ( notify != IP_NULL)
    ipc_port_release_sonce(notify);
  } else {
   ip_unlock(port);
  }
     }
            iokit_remove_reference( obj );
        }
    }
}
