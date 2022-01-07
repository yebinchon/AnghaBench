
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
struct TYPE_10__ {scalar_t__ ip_receiver_name; struct TYPE_10__* ip_destination; } ;


 TYPE_1__* IP_NULL ;
 int IP_VALID (TYPE_1__*) ;
 scalar_t__ MACH_PORT_NULL ;
 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_release (TYPE_1__*) ;
 int ipc_port_destroy (TYPE_1__*) ;
 int ipc_port_send_turnstile_complete (TYPE_1__*) ;

void
ipc_port_release_receive(
 ipc_port_t port)
{
 ipc_port_t dest;

 if (!IP_VALID(port))
  return;

 ip_lock(port);
 assert(ip_active(port));
 assert(port->ip_receiver_name == MACH_PORT_NULL);
 dest = port->ip_destination;

 ipc_port_destroy(port);

 if (dest != IP_NULL) {
  ipc_port_send_turnstile_complete(dest);
  ip_release(dest);
 }
}
