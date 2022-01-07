
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
struct TYPE_7__ {struct TYPE_7__* ip_pdrequest; } ;


 int assert (int ) ;
 int ip_active (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;

void
ipc_port_pdrequest(
 ipc_port_t port,
 ipc_port_t notify,
 ipc_port_t *previousp)
{
 ipc_port_t previous;

 assert(ip_active(port));

 previous = port->ip_pdrequest;
 port->ip_pdrequest = notify;
 ip_unlock(port);

 *previousp = previous;
}
