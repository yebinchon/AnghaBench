
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int turnstile_inheritor_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_4__ {int ip_sync_link_state; int ip_sync_inheritor_ts; int * ip_sync_inheritor_port; int ip_messages; int ip_specialreply; } ;





 int TURNSTILE_INHERITOR_NULL ;
 int assert (int ) ;
 int filt_machport_stashed_special_reply_port_turnstile (TYPE_1__*) ;
 int imq_held (int *) ;
 int port_send_turnstile (int *) ;

turnstile_inheritor_t
ipc_port_get_special_reply_port_inheritor(
 ipc_port_t port)
{
 assert(port->ip_specialreply);
 imq_held(&port->ip_messages);

 switch (port->ip_sync_link_state) {
 case 130:
  if (port->ip_sync_inheritor_port != ((void*)0)) {
   return port_send_turnstile(port->ip_sync_inheritor_port);
  }
  break;
 case 129:
  return filt_machport_stashed_special_reply_port_turnstile(port);
 case 128:
  return port->ip_sync_inheritor_ts;
 }
 return TURNSTILE_INHERITOR_NULL;
}
