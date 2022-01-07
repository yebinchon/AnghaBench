
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_pset_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_8__ {int ip_messages; } ;
struct TYPE_7__ {int ips_messages; } ;


 int assert (int ) ;
 int ip_active (TYPE_2__*) ;
 int ipc_mqueue_add (int *,int *,int *,int *) ;
 int ips_active (TYPE_1__*) ;

kern_return_t
ipc_pset_add(
 ipc_pset_t pset,
 ipc_port_t port,
 uint64_t *reserved_link,
 uint64_t *reserved_prepost)
{
 kern_return_t kr;

 assert(ips_active(pset));
 assert(ip_active(port));

 kr = ipc_mqueue_add(&port->ip_messages, &pset->ips_messages,
       reserved_link, reserved_prepost);

 return kr;
}
