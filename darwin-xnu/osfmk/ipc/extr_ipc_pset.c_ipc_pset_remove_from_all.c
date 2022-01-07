
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_3__ {scalar_t__ ip_in_pset; int ip_messages; } ;


 int KERN_NOT_IN_SET ;
 int KERN_SUCCESS ;
 int ipc_mqueue_remove_from_all (int *) ;

kern_return_t
ipc_pset_remove_from_all(
 ipc_port_t port)
{
 if (port->ip_in_pset == 0)
  return KERN_NOT_IN_SET;




 ipc_mqueue_remove_from_all(&port->ip_messages);
 return KERN_SUCCESS;
}
