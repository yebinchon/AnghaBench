
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ thread_state_flavor_t ;
typedef scalar_t__* thread_state_flavor_array_t ;
struct label {int dummy; } ;
typedef unsigned int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_port_t ;
typedef TYPE_1__* host_priv_t ;
typedef scalar_t__* exception_port_array_t ;
typedef int exception_mask_t ;
typedef int* exception_mask_array_t ;
typedef int exception_behavior_t ;
typedef int* exception_behavior_array_t ;
struct TYPE_9__ {scalar_t__ port; int behavior; scalar_t__ flavor; int * label; } ;
struct TYPE_8__ {TYPE_2__* exc_actions; } ;





 int EXC_MASK_VALID ;
 int EXC_TYPES_COUNT ;
 int FIRST_EXCEPTION ;
 TYPE_1__* HOST_PRIV_NULL ;
 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (scalar_t__) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NO_ACCESS ;
 int KERN_SUCCESS ;
 int VALID_THREAD_STATE_FLAVOR (scalar_t__) ;
 int assert (int) ;
 int current_task () ;
 int host_lock (TYPE_1__*) ;
 int host_unlock (TYPE_1__*) ;
 scalar_t__ ipc_port_copy_send (scalar_t__) ;
 int ipc_port_release_send (scalar_t__) ;
 int mac_exc_associate_action_label (TYPE_2__*,struct label*) ;
 struct label* mac_exc_create_label () ;
 struct label* mac_exc_create_label_for_current_proc () ;
 int mac_exc_free_label (struct label*) ;
 scalar_t__ mac_exc_update_action_label (TYPE_2__*,struct label*) ;
 scalar_t__ mac_task_check_set_host_exception_ports (int ,int) ;

kern_return_t
host_swap_exception_ports(
 host_priv_t host_priv,
 exception_mask_t exception_mask,
 ipc_port_t new_port,
 exception_behavior_t new_behavior,
 thread_state_flavor_t new_flavor,
 exception_mask_array_t masks,
 mach_msg_type_number_t * CountCnt,
 exception_port_array_t ports,
 exception_behavior_array_t behaviors,
 thread_state_flavor_array_t flavors )
{
 unsigned int i,
   j,
   count;
 ipc_port_t old_port[EXC_TYPES_COUNT];






 if (host_priv == HOST_PRIV_NULL)
  return KERN_INVALID_ARGUMENT;

 if (exception_mask & ~EXC_MASK_VALID) {
  return KERN_INVALID_ARGUMENT;
 }

 if (IP_VALID(new_port)) {
  switch (new_behavior) {
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
 host_lock(host_priv);

 assert(EXC_TYPES_COUNT > FIRST_EXCEPTION);
 for (count=0, i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT && count < *CountCnt; i++) {
  if ((exception_mask & (1 << i))



   ) {
   for (j = 0; j < count; j++) {




    if (host_priv->exc_actions[i].port == ports[j] &&
      host_priv->exc_actions[i].behavior == behaviors[j]
      && host_priv->exc_actions[i].flavor == flavors[j])
    {
     masks[j] |= (1 << i);
     break;
    }
   }
   if (j == count) {
    masks[j] = (1 << i);
    ports[j] =
    ipc_port_copy_send(host_priv->exc_actions[i].port);
    behaviors[j] = host_priv->exc_actions[i].behavior;
    flavors[j] = host_priv->exc_actions[i].flavor;
    count++;
   }
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
 while (--i >= FIRST_EXCEPTION) {
  if (IP_VALID(old_port[i]))
   ipc_port_release_send(old_port[i]);





 }

 if (IP_VALID(new_port))
  ipc_port_release_send(new_port);
 *CountCnt = count;

 return KERN_SUCCESS;
}
