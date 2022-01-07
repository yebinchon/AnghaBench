
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ thread_state_flavor_t ;
struct label {int dummy; } ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef TYPE_1__* host_priv_t ;
typedef int exception_mask_t ;
typedef int exception_behavior_t ;
struct TYPE_10__ {int behavior; scalar_t__ flavor; int port; int * label; } ;
struct TYPE_9__ {TYPE_3__* exc_actions; } ;





 int EXC_MASK_VALID ;
 int EXC_TYPES_COUNT ;
 int FIRST_EXCEPTION ;
 TYPE_1__* HOST_PRIV_NULL ;
 int IP_NULL ;
 scalar_t__ IP_VALID (int ) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NO_ACCESS ;
 int KERN_SUCCESS ;
 int MACH_EXCEPTION_CODES ;
 int VALID_THREAD_STATE_FLAVOR (scalar_t__) ;
 int assert (int) ;
 int current_task () ;
 int host_lock (TYPE_1__*) ;
 int host_unlock (TYPE_1__*) ;
 int ipc_port_copy_send (int ) ;
 int ipc_port_release_send (int ) ;
 int mac_exc_associate_action_label (TYPE_3__*,struct label*) ;
 struct label* mac_exc_create_label () ;
 struct label* mac_exc_create_label_for_current_proc () ;
 int mac_exc_free_label (struct label*) ;
 scalar_t__ mac_exc_update_action_label (TYPE_3__*,struct label*) ;
 scalar_t__ mac_task_check_set_host_exception_ports (int ,int) ;
 TYPE_1__ realhost ;

kern_return_t
host_set_exception_ports(
 host_priv_t host_priv,
 exception_mask_t exception_mask,
 ipc_port_t new_port,
 exception_behavior_t new_behavior,
 thread_state_flavor_t new_flavor)
{
 int i;
 ipc_port_t old_port[EXC_TYPES_COUNT];






 if (host_priv == HOST_PRIV_NULL) {
  return KERN_INVALID_ARGUMENT;
 }

 if (exception_mask & ~EXC_MASK_VALID) {
  return KERN_INVALID_ARGUMENT;
 }

 if (IP_VALID(new_port)) {
  switch (new_behavior & ~MACH_EXCEPTION_CODES) {
  case 130:
  case 129:
  case 128:
   break;
  default:
   return KERN_INVALID_ARGUMENT;
  }
 }






 if (new_flavor != 0 && !VALID_THREAD_STATE_FLAVOR(new_flavor))
  return (KERN_INVALID_ARGUMENT);
 assert(host_priv == &realhost);

 host_lock(host_priv);

 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
  if ((exception_mask & (1 << i))



   ) {
   old_port[i] = host_priv->exc_actions[i].port;

   host_priv->exc_actions[i].port =
    ipc_port_copy_send(new_port);
   host_priv->exc_actions[i].behavior = new_behavior;
   host_priv->exc_actions[i].flavor = new_flavor;
  } else {
   old_port[i] = IP_NULL;
  }
 }




 host_unlock(host_priv);





 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
  if (IP_VALID(old_port[i]))
   ipc_port_release_send(old_port[i]);






 }
 if (IP_VALID(new_port))
  ipc_port_release_send(new_port);

        return KERN_SUCCESS;
}
