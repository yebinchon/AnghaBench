
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct turnstile {int dummy; } ;
typedef TYPE_1__* ipc_port_t ;
typedef int boolean_t ;
struct TYPE_16__ {scalar_t__ ip_receiver_name; int ip_messages; struct TYPE_16__* ip_destination; } ;


 int FALSE ;
 TYPE_1__* IP_NULL ;
 scalar_t__ MACH_PORT_NULL ;
 int TRUE ;
 int TURNSTILE_IMMEDIATE_UPDATE ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_SYNC_IPC ;
 int assert (int) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 scalar_t__ ip_lock_try (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_importance_check_circularity (TYPE_1__*,TYPE_1__*) ;
 int ipc_port_multiple_lock () ;
 int ipc_port_multiple_unlock () ;
 int ipc_port_send_turnstile_complete (TYPE_1__*) ;
 int ipc_port_send_turnstile_prepare (TYPE_1__*) ;
 scalar_t__ port_send_turnstile (TYPE_1__*) ;
 int port_send_turnstile_address (TYPE_1__*) ;
 int turnstile_cleanup () ;
 int turnstile_complete (uintptr_t,int ,int *) ;
 struct turnstile* turnstile_prepare (uintptr_t,int ,struct turnstile*,int ) ;
 int turnstile_update_inheritor (struct turnstile*,scalar_t__,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

boolean_t
ipc_port_check_circularity(
 ipc_port_t port,
 ipc_port_t dest)
{




 ipc_port_t base;

 assert(port != IP_NULL);
 assert(dest != IP_NULL);

 if (port == dest)
  return TRUE;
 base = dest;


 ipc_port_send_turnstile_prepare(dest);





 ip_lock(port);
 if (ip_lock_try(dest)) {
  if (!ip_active(dest) ||
      (dest->ip_receiver_name != MACH_PORT_NULL) ||
      (dest->ip_destination == IP_NULL))
   goto not_circular;



  ip_unlock(dest);
 }
 ip_unlock(port);

 ipc_port_multiple_lock();






 for (;;) {
  ip_lock(base);

  if (!ip_active(base) ||
      (base->ip_receiver_name != MACH_PORT_NULL) ||
      (base->ip_destination == IP_NULL))
   break;

  base = base->ip_destination;
 }



 if (port == base) {


  ipc_port_multiple_unlock();



  assert(ip_active(port));
  assert(port->ip_receiver_name == MACH_PORT_NULL);
  assert(port->ip_destination == IP_NULL);

  base = dest;
  while (base != IP_NULL) {
   ipc_port_t next;



   assert(ip_active(base));
   assert(base->ip_receiver_name == MACH_PORT_NULL);

   next = base->ip_destination;
   ip_unlock(base);
   base = next;
  }

  ipc_port_send_turnstile_complete(dest);
  return TRUE;
 }







 ip_lock(port);
 ipc_port_multiple_unlock();

not_circular:
 imq_lock(&port->ip_messages);



 assert(ip_active(port));
 assert(port->ip_receiver_name == MACH_PORT_NULL);
 assert(port->ip_destination == IP_NULL);

 ip_reference(dest);
 port->ip_destination = dest;


 struct turnstile *send_turnstile = TURNSTILE_NULL;
 if (port_send_turnstile(port)) {
  send_turnstile = turnstile_prepare((uintptr_t)port,
   port_send_turnstile_address(port),
   TURNSTILE_NULL, TURNSTILE_SYNC_IPC);

  turnstile_update_inheritor(send_turnstile, port_send_turnstile(dest),
   (TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE));


 }
 imq_unlock(&port->ip_messages);



 ip_unlock(port);

 for (;;) {
  ipc_port_t next;

  if (dest == base)
   break;



  assert(ip_active(dest));
  assert(dest->ip_receiver_name == MACH_PORT_NULL);
  assert(dest->ip_destination != IP_NULL);

  next = dest->ip_destination;
  ip_unlock(dest);
  dest = next;
 }


 assert(!ip_active(base) ||
        (base->ip_receiver_name != MACH_PORT_NULL) ||
        (base->ip_destination == IP_NULL));

 ip_unlock(base);


 if (send_turnstile) {
  turnstile_update_inheritor_complete(send_turnstile, TURNSTILE_INTERLOCK_NOT_HELD);


  imq_lock(&port->ip_messages);
  turnstile_complete((uintptr_t)port, port_send_turnstile_address(port), ((void*)0));
  send_turnstile = TURNSTILE_NULL;
  imq_unlock(&port->ip_messages);
  turnstile_cleanup();
 }

 return FALSE;

}
