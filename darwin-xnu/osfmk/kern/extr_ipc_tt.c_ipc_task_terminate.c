
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_8__ {int port; } ;
struct TYPE_7__ {scalar_t__ itk_self; scalar_t__ itk_nself; scalar_t__ itk_resume; int * itk_registered; int itk_debug_control; int itk_task_access; int itk_gssd; int itk_seatbelt; int itk_bootstrap; int itk_host; TYPE_2__* exc_actions; int itk_sself; } ;


 int EXC_TYPES_COUNT ;
 int FIRST_EXCEPTION ;
 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (int ) ;
 int TASK_PORT_REGISTER_MAX ;
 int assert (int) ;
 int ipc_port_dealloc_kernel (scalar_t__) ;
 int ipc_port_release_send (int ) ;
 int itk_lock (TYPE_1__*) ;
 int itk_lock_destroy (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;
 int mac_exc_free_action_label (TYPE_2__*) ;

void
ipc_task_terminate(
 task_t task)
{
 ipc_port_t kport;
 ipc_port_t nport;
 ipc_port_t rport;
 int i;

 itk_lock(task);
 kport = task->itk_self;

 if (kport == IP_NULL) {

  itk_unlock(task);
  return;
 }
 task->itk_self = IP_NULL;

 nport = task->itk_nself;
 assert(nport != IP_NULL);
 task->itk_nself = IP_NULL;

 rport = task->itk_resume;
 task->itk_resume = IP_NULL;

 itk_unlock(task);



 if (IP_VALID(task->itk_sself))
  ipc_port_release_send(task->itk_sself);

 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
  if (IP_VALID(task->exc_actions[i].port)) {
   ipc_port_release_send(task->exc_actions[i].port);
  }



 }

 if (IP_VALID(task->itk_host))
  ipc_port_release_send(task->itk_host);

 if (IP_VALID(task->itk_bootstrap))
  ipc_port_release_send(task->itk_bootstrap);

 if (IP_VALID(task->itk_seatbelt))
  ipc_port_release_send(task->itk_seatbelt);

 if (IP_VALID(task->itk_gssd))
  ipc_port_release_send(task->itk_gssd);

 if (IP_VALID(task->itk_task_access))
  ipc_port_release_send(task->itk_task_access);

 if (IP_VALID(task->itk_debug_control))
  ipc_port_release_send(task->itk_debug_control);

 for (i = 0; i < TASK_PORT_REGISTER_MAX; i++)
  if (IP_VALID(task->itk_registered[i]))
   ipc_port_release_send(task->itk_registered[i]);


 ipc_port_dealloc_kernel(kport);
 ipc_port_dealloc_kernel(nport);
 if (rport != IP_NULL)
  ipc_port_dealloc_kernel(rport);

 itk_lock_destroy(task);
}
