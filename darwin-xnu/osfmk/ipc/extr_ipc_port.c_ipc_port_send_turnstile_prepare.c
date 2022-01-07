
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct turnstile {scalar_t__ ts_port_ref; } ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_receiver_name; int ip_messages; struct TYPE_8__* ip_destination; } ;


 TYPE_1__* IP_NULL ;
 scalar_t__ MACH_PORT_NULL ;
 int TURNSTILE_IMMEDIATE_UPDATE ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_SYNC_IPC ;
 int assert (int) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 struct turnstile* ipc_port_get_inheritor (TYPE_1__*) ;
 struct turnstile* port_send_turnstile (TYPE_1__*) ;
 int port_send_turnstile_address (TYPE_1__*) ;
 struct turnstile* turnstile_alloc () ;
 int turnstile_deallocate (struct turnstile*) ;
 struct turnstile* turnstile_prepare (uintptr_t,int ,struct turnstile*,int ) ;
 int turnstile_update_inheritor (struct turnstile*,struct turnstile*,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

void
ipc_port_send_turnstile_prepare(ipc_port_t port)
{
 struct turnstile *turnstile = TURNSTILE_NULL;
 struct turnstile *inheritor = TURNSTILE_NULL;
 struct turnstile *send_turnstile = TURNSTILE_NULL;

retry_alloc:
 imq_lock(&port->ip_messages);

 if (port_send_turnstile(port) == ((void*)0) ||
     port_send_turnstile(port)->ts_port_ref == 0) {

  if (turnstile == TURNSTILE_NULL) {
   imq_unlock(&port->ip_messages);
   turnstile = turnstile_alloc();
   goto retry_alloc;
  }

  send_turnstile = turnstile_prepare((uintptr_t)port,
   port_send_turnstile_address(port),
   turnstile, TURNSTILE_SYNC_IPC);
  turnstile = TURNSTILE_NULL;





  if (ip_active(port) &&
      port->ip_receiver_name == MACH_PORT_NULL &&
      port->ip_destination != IP_NULL) {
   assert(port->ip_receiver_name == MACH_PORT_NULL);
   assert(port->ip_destination != IP_NULL);

   inheritor = port_send_turnstile(port->ip_destination);
  } else {
   inheritor = ipc_port_get_inheritor(port);
  }
  turnstile_update_inheritor(send_turnstile, inheritor,
   TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE);

 }


 port_send_turnstile(port)->ts_port_ref++;
 imq_unlock(&port->ip_messages);

 if (send_turnstile) {
  turnstile_update_inheritor_complete(send_turnstile,
   TURNSTILE_INTERLOCK_NOT_HELD);
 }
 if (turnstile != TURNSTILE_NULL) {
  turnstile_deallocate(turnstile);
 }
}
