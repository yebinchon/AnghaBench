
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef size_t ipc_table_elems_t ;
typedef TYPE_2__* ipc_port_t ;
typedef TYPE_3__* ipc_port_request_t ;
typedef size_t ipc_port_request_index_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_15__ {int ipr_soright; int ipr_name; TYPE_1__* ipr_size; } ;
struct TYPE_14__ {scalar_t__ ip_sprequests; scalar_t__ ip_spimportant; TYPE_3__* ip_requests; } ;
struct TYPE_13__ {size_t its_size; } ;


 int IPID_OPTION_NORMAL ;
 TYPE_3__* IPR_NULL ;
 TYPE_2__* IPR_SOR_PORT (int ) ;
 scalar_t__ IPR_SOR_SPARMED (int ) ;
 int IP_NULL ;
 scalar_t__ IP_VALID (TYPE_2__*) ;
 scalar_t__ MACH_PORT_VALID (int ) ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ ip_active (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int ipc_notify_send_possible (TYPE_2__*,int ) ;
 scalar_t__ ipc_port_importance_delta (TYPE_2__*,int ,int) ;

void
ipc_port_spnotify(
 ipc_port_t port)
{
 ipc_port_request_index_t index = 0;
 ipc_table_elems_t size = 0;





 if (port->ip_sprequests == 0)
  return;

 ip_lock(port);
 if (port->ip_sprequests == 0) {
  ip_unlock(port);
  return;
 }
 port->ip_sprequests = 0;

revalidate:
 if (ip_active(port)) {
  ipc_port_request_t requests;


  requests = port->ip_requests;
  assert(requests != IPR_NULL);





  if (size == 0)
   size = requests->ipr_size->its_size;


  while (++index < size) {
   ipc_port_request_t ipr = &requests[index];
   mach_port_name_t name = ipr->ipr_name;
   ipc_port_t soright = IPR_SOR_PORT(ipr->ipr_soright);
   boolean_t armed = IPR_SOR_SPARMED(ipr->ipr_soright);

   if (MACH_PORT_VALID(name) && armed && IP_VALID(soright)) {

    ipr->ipr_soright = IP_NULL;
    ip_unlock(port);

    ipc_notify_send_possible(soright, name);

    ip_lock(port);
    goto revalidate;
   }
  }
 }
 ip_unlock(port);
 return;
}
