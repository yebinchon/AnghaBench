
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


struct turnstile {int dummy; } ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_port_t ;
typedef scalar_t__ ipc_importance_task_t ;
typedef int boolean_t ;
struct TYPE_20__ {scalar_t__ ip_impdonation; int ip_impcount; scalar_t__ ip_receiver_name; scalar_t__ ip_tempowner; scalar_t__ ip_imp_task; int ip_messages; TYPE_1__* ip_receiver; struct TYPE_20__* ip_destination; } ;
struct TYPE_19__ {TYPE_16__* is_task; } ;
struct TYPE_18__ {scalar_t__ task_imp_base; } ;


 int FALSE ;
 scalar_t__ IIT_NULL ;
 TYPE_2__* IP_NULL ;
 scalar_t__ MACH_PORT_NULL ;
 TYPE_16__* TASK_NULL ;
 int TRUE ;
 int TURNSTILE_IMMEDIATE_UPDATE ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_SYNC_IPC ;
 int assert (int) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int ip_active (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 scalar_t__ ip_lock_try (TYPE_2__*) ;
 int ip_reference (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int ipc_importance_lock () ;
 int ipc_importance_lock_try () ;
 int ipc_importance_task_drop_internal_assertion_locked (scalar_t__,int) ;
 int ipc_importance_task_hold_internal_assertion_locked (scalar_t__,int) ;
 int ipc_importance_task_is_any_receiver_type (scalar_t__) ;
 int ipc_importance_task_reference (scalar_t__) ;
 int ipc_importance_task_release (scalar_t__) ;
 int ipc_importance_unlock () ;
 int ipc_port_impcount_delta (TYPE_2__*,int,TYPE_2__*) ;
 int ipc_port_multiple_lock () ;
 int ipc_port_multiple_unlock () ;
 int ipc_port_send_turnstile_complete (TYPE_2__*) ;
 int ipc_port_send_turnstile_prepare (TYPE_2__*) ;
 scalar_t__ port_send_turnstile (TYPE_2__*) ;
 int port_send_turnstile_address (TYPE_2__*) ;
 int turnstile_cleanup () ;
 int turnstile_complete (uintptr_t,int ,int *) ;
 struct turnstile* turnstile_prepare (uintptr_t,int ,struct turnstile*,int ) ;
 int turnstile_update_inheritor (struct turnstile*,scalar_t__,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

boolean_t
ipc_importance_check_circularity(
 ipc_port_t port,
 ipc_port_t dest)
{
 ipc_importance_task_t imp_task = IIT_NULL;
 ipc_importance_task_t release_imp_task = IIT_NULL;
 boolean_t imp_lock_held = FALSE;
 int assertcnt = 0;
 ipc_port_t base;
 struct turnstile *send_turnstile = TURNSTILE_NULL;

 assert(port != IP_NULL);
 assert(dest != IP_NULL);

 if (port == dest)
  return TRUE;
 base = dest;


 ipc_port_send_turnstile_prepare(dest);


 if (port->ip_impdonation != 0) {
  imp_lock_held = TRUE;
  ipc_importance_lock();
 }





 ip_lock(port);





 if (port->ip_impcount > 0 && !imp_lock_held) {
  if (!ipc_importance_lock_try()) {
   ip_unlock(port);
   ipc_importance_lock();
   ip_lock(port);
  }
  imp_lock_held = TRUE;
 }

 if (ip_lock_try(dest)) {
  if (!ip_active(dest) ||
      (dest->ip_receiver_name != MACH_PORT_NULL) ||
      (dest->ip_destination == IP_NULL))
   goto not_circular;



  ip_unlock(dest);
 }
 ip_unlock(port);





 if (!imp_lock_held) {
  ipc_importance_lock();
  imp_lock_held = TRUE;
 }

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

  if (imp_lock_held)
   ipc_importance_unlock();

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


 assert(port->ip_tempowner != 0);






 release_imp_task = port->ip_imp_task;
 if (IIT_NULL != release_imp_task) {
  port->ip_imp_task = IIT_NULL;
 }
 assertcnt = port->ip_impcount;


 port->ip_tempowner = 0;






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

  ipc_port_impcount_delta(dest, assertcnt, base);

  if (dest == base)
   break;



  assert(ip_active(dest));
  assert(dest->ip_receiver_name == MACH_PORT_NULL);
  assert(dest->ip_destination != IP_NULL);
  assert(dest->ip_tempowner == 0);

  next = dest->ip_destination;
  ip_unlock(dest);
  dest = next;
 }


 assert(!ip_active(base) ||
        (base->ip_receiver_name != MACH_PORT_NULL) ||
        (base->ip_destination == IP_NULL));







 if (ip_active(base) && (assertcnt > 0)) {
  assert(imp_lock_held);
  if (base->ip_tempowner != 0) {
   if (IIT_NULL != base->ip_imp_task) {

    imp_task = base->ip_imp_task;
    assert(ipc_importance_task_is_any_receiver_type(imp_task));
   }


  } else if (base->ip_receiver_name != MACH_PORT_NULL) {
   ipc_space_t space = base->ip_receiver;


   if (space->is_task != TASK_NULL &&
       ipc_importance_task_is_any_receiver_type(space->is_task->task_imp_base))
    imp_task = space->is_task->task_imp_base;
  }


  if (imp_task != IIT_NULL) {
   ipc_importance_task_reference(imp_task);
  }
 }

 ip_unlock(base);
 boolean_t transfer_assertions = (imp_task != release_imp_task);

 if (imp_task != IIT_NULL) {
  assert(imp_lock_held);
  if (transfer_assertions)
   ipc_importance_task_hold_internal_assertion_locked(imp_task, assertcnt);
 }

 if (release_imp_task != IIT_NULL) {
  assert(imp_lock_held);
  if (transfer_assertions)
   ipc_importance_task_drop_internal_assertion_locked(release_imp_task, assertcnt);
 }

 if (imp_lock_held)
  ipc_importance_unlock();


 if (send_turnstile) {
  turnstile_update_inheritor_complete(send_turnstile, TURNSTILE_INTERLOCK_NOT_HELD);


  imq_lock(&port->ip_messages);
  turnstile_complete((uintptr_t)port, port_send_turnstile_address(port), ((void*)0));
  send_turnstile = TURNSTILE_NULL;
  imq_unlock(&port->ip_messages);
  turnstile_cleanup();
 }

 if (imp_task != IIT_NULL)
  ipc_importance_task_release(imp_task);

 if (release_imp_task != IIT_NULL)
  ipc_importance_task_release(release_imp_task);

 return FALSE;
}
