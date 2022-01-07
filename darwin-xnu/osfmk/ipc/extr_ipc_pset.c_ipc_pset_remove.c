
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_1__* ipc_pset_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_7__ {scalar_t__ ip_in_pset; int ip_messages; } ;
struct TYPE_6__ {int ips_messages; } ;


 int KERN_NOT_IN_SET ;
 int assert (int ) ;
 int ip_active (TYPE_2__*) ;
 int ipc_mqueue_remove (int *,int *) ;

kern_return_t
ipc_pset_remove(
 ipc_pset_t pset,
 ipc_port_t port)
{
 kern_return_t kr;

 assert(ip_active(port));

 if (port->ip_in_pset == 0)
  return KERN_NOT_IN_SET;

 kr = ipc_mqueue_remove(&port->ip_messages, &pset->ips_messages);

 return kr;
}
