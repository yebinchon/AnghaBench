
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef scalar_t__ thread_state_flavor_t ;
struct label {int dummy; } ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef int exception_mask_t ;
typedef int exception_behavior_t ;
typedef int boolean_t ;
struct TYPE_10__ {scalar_t__* val; } ;
struct TYPE_13__ {TYPE_1__ sec_token; } ;
struct TYPE_12__ {int behavior; int privileged; scalar_t__ flavor; int port; } ;
struct TYPE_11__ {TYPE_6__* exc_actions; int active; } ;





 int EXC_MASK_VALID ;
 int EXC_TYPES_COUNT ;
 int FIRST_EXCEPTION ;
 int IP_NULL ;
 scalar_t__ IP_VALID (int ) ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MACH_EXCEPTION_CODES ;
 TYPE_2__* THREAD_NULL ;
 int VALID_THREAD_STATE_FLAVOR (scalar_t__) ;
 TYPE_8__* current_task () ;
 int ipc_port_copy_send (int ) ;
 int ipc_port_release_send (int ) ;
 int ipc_thread_init_exc_actions (TYPE_2__*) ;
 struct label* mac_exc_create_label_for_current_proc () ;
 int mac_exc_free_label (struct label*) ;
 scalar_t__ mac_exc_update_action_label (TYPE_6__*,struct label*) ;
 int thread_mtx_lock (TYPE_2__*) ;
 int thread_mtx_unlock (TYPE_2__*) ;

kern_return_t
thread_set_exception_ports(
 thread_t thread,
 exception_mask_t exception_mask,
 ipc_port_t new_port,
 exception_behavior_t new_behavior,
 thread_state_flavor_t new_flavor)
{
 ipc_port_t old_port[EXC_TYPES_COUNT];
 boolean_t privileged = current_task()->sec_token.val[0] == 0;
 register int i;





 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 if (exception_mask & ~EXC_MASK_VALID)
  return (KERN_INVALID_ARGUMENT);

 if (IP_VALID(new_port)) {
  switch (new_behavior & ~MACH_EXCEPTION_CODES) {

  case 130:
  case 129:
  case 128:
   break;

  default:
   return (KERN_INVALID_ARGUMENT);
  }
 }






 if (new_flavor != 0 && !VALID_THREAD_STATE_FLAVOR(new_flavor))
  return (KERN_INVALID_ARGUMENT);





 thread_mtx_lock(thread);

 if (!thread->active) {
  thread_mtx_unlock(thread);

  return (KERN_FAILURE);
 }

 if (thread->exc_actions == ((void*)0)) {
  ipc_thread_init_exc_actions(thread);
 }
 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; ++i) {
  if ((exception_mask & (1 << i))



   ) {
   old_port[i] = thread->exc_actions[i].port;
   thread->exc_actions[i].port = ipc_port_copy_send(new_port);
   thread->exc_actions[i].behavior = new_behavior;
   thread->exc_actions[i].flavor = new_flavor;
   thread->exc_actions[i].privileged = privileged;
  }
  else
   old_port[i] = IP_NULL;
 }

 thread_mtx_unlock(thread);





 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; ++i)
  if (IP_VALID(old_port[i]))
   ipc_port_release_send(old_port[i]);

 if (IP_VALID(new_port))
  ipc_port_release_send(new_port);

 return (KERN_SUCCESS);
}
