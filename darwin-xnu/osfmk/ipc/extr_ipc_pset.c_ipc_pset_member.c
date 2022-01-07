
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ipc_pset_t ;
typedef TYPE_2__* ipc_port_t ;
typedef int boolean_t ;
struct TYPE_7__ {int ip_messages; } ;
struct TYPE_6__ {int ips_messages; } ;


 int assert (int ) ;
 int ip_active (TYPE_2__*) ;
 int ipc_mqueue_member (int *,int *) ;

boolean_t
ipc_pset_member(
 ipc_pset_t pset,
 ipc_port_t port)
{
 assert(ip_active(port));

 return (ipc_mqueue_member(&port->ip_messages, &pset->ips_messages));
}
