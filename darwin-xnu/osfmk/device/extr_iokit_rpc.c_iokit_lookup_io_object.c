
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ ipc_kobject_type_t ;
typedef int * io_object_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 int IP_VALID (TYPE_1__*) ;
 int iokit_add_reference (int *,scalar_t__) ;
 int iokit_lock_port (TYPE_1__*) ;
 int iokit_unlock_port (TYPE_1__*) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;

__attribute__((used)) static io_object_t
iokit_lookup_io_object(ipc_port_t port, ipc_kobject_type_t type)
{
 io_object_t obj;

 if (!IP_VALID(port))
     return (((void*)0));

 iokit_lock_port(port);
 if (ip_active(port) && (ip_kotype(port) == type)) {
     obj = (io_object_t) port->ip_kobject;
     iokit_add_reference( obj, type );
 }
 else
     obj = ((void*)0);

 iokit_unlock_port(port);

 return( obj );
}
