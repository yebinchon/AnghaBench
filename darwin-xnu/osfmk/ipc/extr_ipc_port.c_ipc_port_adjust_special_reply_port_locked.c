
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef struct turnstile* turnstile_inheritor_t ;
struct turnstile {int dummy; } ;
struct knote {int dummy; } ;
typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {scalar_t__ ip_specialreply; int ip_sync_link_state; int ip_messages; struct turnstile* ip_sync_inheritor_ts; struct knote* ip_sync_inheritor_knote; struct TYPE_12__* ip_sync_inheritor_port; } ;


 scalar_t__ FALSE ;
 int IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE ;
 int IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY ;
 int IPC_PORT_ADJUST_SR_ENABLE_EVENT ;
 int IPC_PORT_ADJUST_SR_LINK_WORKLOOP ;
 int IPC_PORT_ADJUST_SR_RECEIVED_MSG ;
 void* IPC_PORT_NULL ;
 scalar_t__ ITH_KNOTE_VALID (struct knote*,int ) ;
 int MACH_MSG_TYPE_PORT_SEND_ONCE ;
 int PORT_SYNC_LINK_ANY ;




 int TURNSTILE_IMMEDIATE_UPDATE ;
 struct turnstile* TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 struct turnstile* TURNSTILE_NULL ;
 int assert (int) ;
 struct turnstile* filt_machport_stash_port (struct knote*,TYPE_1__*,int*) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int ip_release (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 struct turnstile* ipc_port_rcv_turnstile (TYPE_1__*) ;
 int ipc_port_send_turnstile_complete (TYPE_1__*) ;
 int port_rcv_turnstile_address (TYPE_1__*) ;
 int reset_ip_srp_bits (TYPE_1__*) ;
 int reset_ip_srp_msg_sent (TYPE_1__*) ;
 int set_ip_srp_lost_link (TYPE_1__*) ;
 int turnstile_cleanup () ;
 int turnstile_complete (uintptr_t,int ,int *) ;
 int turnstile_deallocate_safe (struct turnstile*) ;
 int turnstile_reference (struct turnstile*) ;
 int turnstile_update_inheritor (struct turnstile*,struct turnstile*,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

void
ipc_port_adjust_special_reply_port_locked(
 ipc_port_t special_reply_port,
 struct knote *kn,
 uint8_t flags,
 boolean_t get_turnstile)
{
 ipc_port_t dest_port = IPC_PORT_NULL;
 int sync_link_state = 131;
 turnstile_inheritor_t inheritor = TURNSTILE_INHERITOR_NULL;
 struct turnstile *dest_ts = TURNSTILE_NULL, *ts = TURNSTILE_NULL;

 imq_lock(&special_reply_port->ip_messages);

 if (flags & IPC_PORT_ADJUST_SR_RECEIVED_MSG) {
  reset_ip_srp_msg_sent(special_reply_port);
 }


 if (special_reply_port->ip_specialreply == 0 ||
   special_reply_port->ip_sync_link_state == PORT_SYNC_LINK_ANY) {
  if (get_turnstile) {
   turnstile_complete((uintptr_t)special_reply_port,
    port_rcv_turnstile_address(special_reply_port),
   ((void*)0));
  }
  imq_unlock(&special_reply_port->ip_messages);
  ip_unlock(special_reply_port);
  if (get_turnstile) {
   turnstile_cleanup();
  }
  return;
 }


 if (flags & IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY) {

  assert(get_turnstile == FALSE);
  special_reply_port->ip_specialreply = 0;

  reset_ip_srp_bits(special_reply_port);


  if (special_reply_port->ip_sync_link_state == 131) {
   imq_unlock(&special_reply_port->ip_messages);
   ip_unlock(special_reply_port);
   return;
  }
 } else if (flags & IPC_PORT_ADJUST_SR_LINK_WORKLOOP) {
  if (special_reply_port->ip_sync_link_state == PORT_SYNC_LINK_ANY ||
      special_reply_port->ip_sync_link_state == 130) {
   if (ITH_KNOTE_VALID(kn, MACH_MSG_TYPE_PORT_SEND_ONCE)) {
    inheritor = filt_machport_stash_port(kn, special_reply_port,
      &sync_link_state);
   }
  }
 } else if (flags & IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE) {
  sync_link_state = PORT_SYNC_LINK_ANY;
 }

 switch (special_reply_port->ip_sync_link_state) {
 case 130:
  dest_port = special_reply_port->ip_sync_inheritor_port;
  special_reply_port->ip_sync_inheritor_port = IPC_PORT_NULL;
  break;
 case 129:
  special_reply_port->ip_sync_inheritor_knote = ((void*)0);
  break;
 case 128:
  dest_ts = special_reply_port->ip_sync_inheritor_ts;
  special_reply_port->ip_sync_inheritor_ts = ((void*)0);
  break;
 }

 special_reply_port->ip_sync_link_state = sync_link_state;

 switch (sync_link_state) {
 case 129:
  special_reply_port->ip_sync_inheritor_knote = kn;
  break;
 case 128:
  turnstile_reference(inheritor);
  special_reply_port->ip_sync_inheritor_ts = inheritor;
  break;
 case 131:
  if (flags & IPC_PORT_ADJUST_SR_ENABLE_EVENT) {
   set_ip_srp_lost_link(special_reply_port);
  }
  break;
 }


 if (get_turnstile) {
  turnstile_complete((uintptr_t)special_reply_port,
   port_rcv_turnstile_address(special_reply_port),
   ((void*)0));
 } else {
  ts = ipc_port_rcv_turnstile(special_reply_port);
  if (ts) {
   turnstile_reference(ts);
   turnstile_update_inheritor(ts, inheritor,
     (TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE));
  }
 }

 imq_unlock(&special_reply_port->ip_messages);
 ip_unlock(special_reply_port);

 if (get_turnstile) {
  turnstile_cleanup();
 } else if (ts) {

  turnstile_update_inheritor_complete(ts, TURNSTILE_INTERLOCK_NOT_HELD);
  turnstile_deallocate_safe(ts);
 }


 if (dest_port) {
  ipc_port_send_turnstile_complete(dest_port);

  ip_release(dest_port);
 }

 if (dest_ts) {
  turnstile_deallocate_safe(dest_ts);
 }
}
