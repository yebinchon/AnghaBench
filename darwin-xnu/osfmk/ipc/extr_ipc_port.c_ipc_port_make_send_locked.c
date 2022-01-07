
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
struct TYPE_6__ {int ip_srights; int ip_mscount; } ;


 int assert (int ) ;
 int ip_active (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;

ipc_port_t
ipc_port_make_send_locked(
 ipc_port_t port)
{
 assert(ip_active(port));
 port->ip_mscount++;
 port->ip_srights++;
 ip_reference(port);
 return port;
}
