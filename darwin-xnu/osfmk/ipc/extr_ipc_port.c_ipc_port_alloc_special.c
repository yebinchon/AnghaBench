
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ipc_space_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_9__ {int io_bits; } ;
struct TYPE_8__ {int ip_references; TYPE_5__ ip_object; } ;


 int IOT_PORT ;
 int IP_CALLSTACK_MAX ;
 TYPE_1__* IP_NULL ;
 int TRUE ;
 int __IGNORE_WCASTALIGN (TYPE_1__*) ;
 int bzero (char*,int) ;
 scalar_t__ io_alloc (int ) ;
 int io_lock_init (TYPE_5__*) ;
 int io_makebits (int ,int ,int ) ;
 int ipc_port_callstack_init_debug (uintptr_t*,int) ;
 int ipc_port_init (TYPE_1__*,int ,int) ;
 int ipc_port_init_debug (TYPE_1__*,uintptr_t*,int) ;

ipc_port_t
ipc_port_alloc_special(
 ipc_space_t space)
{
 ipc_port_t port;

 __IGNORE_WCASTALIGN(port = (ipc_port_t) io_alloc(IOT_PORT));
 if (port == IP_NULL)
  return IP_NULL;






 bzero((char *)port, sizeof(*port));
 io_lock_init(&port->ip_object);
 port->ip_references = 1;
 port->ip_object.io_bits = io_makebits(TRUE, IOT_PORT, 0);

 ipc_port_init(port, space, 1);





 return port;
}
