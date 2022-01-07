
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ ip_sync_link_state; scalar_t__ ip_sync_inheritor_port; int ip_messages; int ip_specialreply; } ;


 scalar_t__ FALSE ;
 scalar_t__ IPC_PORT_NULL ;
 scalar_t__ PORT_SYNC_LINK_ANY ;
 scalar_t__ PORT_SYNC_LINK_PORT ;
 scalar_t__ TRUE ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int ip_lock (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_port_send_turnstile_complete (TYPE_1__*) ;
 int ipc_port_send_turnstile_prepare (TYPE_1__*) ;

void
ipc_port_link_special_reply_port(
 ipc_port_t special_reply_port,
 ipc_port_t dest_port)
{
 boolean_t drop_turnstile_ref = FALSE;


 ipc_port_send_turnstile_prepare(dest_port);


 ip_lock(special_reply_port);
 imq_lock(&special_reply_port->ip_messages);


 if (!special_reply_port->ip_specialreply ||
     special_reply_port->ip_sync_link_state != PORT_SYNC_LINK_ANY ||
     special_reply_port->ip_sync_inheritor_port != IPC_PORT_NULL) {
  drop_turnstile_ref = TRUE;
 } else {

  ip_reference(dest_port);
  special_reply_port->ip_sync_inheritor_port = dest_port;
  special_reply_port->ip_sync_link_state = PORT_SYNC_LINK_PORT;
 }

 imq_unlock(&special_reply_port->ip_messages);
 ip_unlock(special_reply_port);

 if (drop_turnstile_ref) {
  ipc_port_send_turnstile_complete(dest_port);
 }

 return;
}
