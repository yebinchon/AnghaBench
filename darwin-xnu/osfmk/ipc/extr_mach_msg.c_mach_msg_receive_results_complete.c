
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* thread_t ;
typedef scalar_t__ ipc_port_t ;
typedef scalar_t__ ipc_object_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ turnstile; scalar_t__ ith_state; int ith_option; } ;


 int FALSE ;
 scalar_t__ IOT_PORT ;
 int IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE ;
 int IPC_PORT_ADJUST_SR_RECEIVED_MSG ;
 scalar_t__ IPC_PORT_NULL ;
 scalar_t__ MACH_PEEK_READY ;
 scalar_t__ MACH_RCV_INTERRUPTED ;
 int MACH_RCV_LARGE ;
 scalar_t__ MACH_RCV_PORT_CHANGED ;
 scalar_t__ MACH_RCV_TIMED_OUT ;
 scalar_t__ MACH_RCV_TOO_LARGE ;
 int TRUE ;
 scalar_t__ TURNSTILE_NULL ;
 int __IGNORE_WCASTALIGN (scalar_t__) ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 scalar_t__ io_otype (scalar_t__) ;
 int ipc_port_adjust_special_reply_port (scalar_t__,int ,int ) ;

void
mach_msg_receive_results_complete(ipc_object_t object)
{
 thread_t self = current_thread();
 ipc_port_t port = IPC_PORT_NULL;
 boolean_t get_turnstile = self->turnstile ? FALSE : TRUE;

 if (io_otype(object) == IOT_PORT) {
  __IGNORE_WCASTALIGN(port = (ipc_port_t) object);
 } else {
  assert(self->turnstile != TURNSTILE_NULL);
  return;
 }

 uint8_t flags = IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE;




 if (!((self->ith_state == MACH_RCV_TOO_LARGE && self->ith_option & MACH_RCV_LARGE) ||
  self->ith_state == MACH_RCV_INTERRUPTED ||
  self->ith_state == MACH_RCV_TIMED_OUT ||
  self->ith_state == MACH_RCV_PORT_CHANGED ||
  self->ith_state == MACH_PEEK_READY)) {

  flags |= IPC_PORT_ADJUST_SR_RECEIVED_MSG;
 }

 ipc_port_adjust_special_reply_port(port,
  flags, get_turnstile);

}
