
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ipc_table_size_t ;
typedef TYPE_1__* ipc_port_t ;
typedef TYPE_2__* ipc_port_request_t ;
struct TYPE_12__ {int ipr_size; } ;
struct TYPE_11__ {int ip_messages; TYPE_2__* ip_requests; } ;


 TYPE_2__* IPR_NULL ;
 scalar_t__ TURNSTILE_NULL ;
 int assert (int) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 int ipc_mqueue_deinit (int *) ;
 scalar_t__ ipc_port_rcv_turnstile (TYPE_1__*) ;
 int ipc_port_track_dealloc (TYPE_1__*) ;
 int it_requests_free (int ,TYPE_2__*) ;
 int panic (char*,TYPE_1__*) ;
 scalar_t__ port_send_turnstile (TYPE_1__*) ;

void
ipc_port_finalize(
 ipc_port_t port)
{
 ipc_port_request_t requests = port->ip_requests;

 assert(port_send_turnstile(port) == TURNSTILE_NULL);
 assert(ipc_port_rcv_turnstile(port) == TURNSTILE_NULL);

 if (ip_active(port)) {
  panic("Trying to free an active port. port %p", port);
 }

 if (requests != IPR_NULL) {
  ipc_table_size_t its = requests->ipr_size;
  it_requests_free(its, requests);
  port->ip_requests = IPR_NULL;
 }

 ipc_mqueue_deinit(&port->ip_messages);




}
