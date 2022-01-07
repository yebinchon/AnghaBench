
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_t ;
struct image_params {int ip_new_thread; int ip_vfs_context; TYPE_2__* ip_px_spa; } ;
typedef int proc_t ;
typedef scalar_t__ kern_return_t ;
typedef int * ipc_port_t ;
typedef int ipc_object_t ;
typedef scalar_t__ errno_t ;
typedef int boolean_t ;
struct TYPE_3__ {int port_type; int new_port; int flavor; int behavior; int mask; int which; } ;
typedef TYPE_1__ _ps_port_action_t ;
typedef TYPE_2__* _posix_spawn_port_actions_t ;
struct TYPE_4__ {int pspa_count; TYPE_1__* pspa_actions; } ;


 int * CAST_MACH_NAME_TO_PORT (int ) ;
 int DTRACE_PROC1 (int ,int ,int ) ;
 scalar_t__ EINVAL ;
 int FALSE ;
 int IPC_PORT_VALID (int *) ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_COPY_SEND ;
 scalar_t__ MACH_PORT_VALID (int ) ;




 int TRUE ;
 scalar_t__ audit_session_spawnjoin (int ,int ,int *) ;
 int current_task () ;
 int get_task_ipcspace (int ) ;
 int get_threadtask (int ) ;
 scalar_t__ ipc_object_copyin (int ,int ,int ,int *) ;
 int ipc_port_release_send (int *) ;
 int mach_port_name_t ;
 int spawn__port__failure ;
 scalar_t__ task_set_exception_ports (int ,int ,int *,int ,int ) ;
 scalar_t__ task_set_special_port (int ,int ,int *) ;
 int vfs_context_proc (int ) ;

__attribute__((used)) static errno_t
exec_handle_port_actions(struct image_params *imgp, boolean_t * portwatch_present,
                         ipc_port_t * portwatch_ports)
{
 _posix_spawn_port_actions_t pacts = imgp->ip_px_spa;



 _ps_port_action_t *act = ((void*)0);
 task_t task = get_threadtask(imgp->ip_new_thread);
 ipc_port_t port = ((void*)0);
 errno_t ret = 0;
 int i;
 kern_return_t kr;

 *portwatch_present = FALSE;

 for (i = 0; i < pacts->pspa_count; i++) {
  act = &pacts->pspa_actions[i];

  if (MACH_PORT_VALID(act->new_port)) {
   kr = ipc_object_copyin(get_task_ipcspace(current_task()),
                          act->new_port, MACH_MSG_TYPE_COPY_SEND,
                          (ipc_object_t *) &port);

   if (kr != KERN_SUCCESS) {
    ret = EINVAL;
    goto done;
   }
  } else {

   port = CAST_MACH_NAME_TO_PORT(act->new_port);
  }

  switch (act->port_type) {
  case 128:
   kr = task_set_special_port(task, act->which, port);

   if (kr != KERN_SUCCESS)
    ret = EINVAL;
   break;

  case 130:
   kr = task_set_exception_ports(task, act->mask, port,
                                 act->behavior, act->flavor);
   if (kr != KERN_SUCCESS)
    ret = EINVAL;
   break;
  case 129:
   if (portwatch_ports != ((void*)0) && IPC_PORT_VALID(port)) {
    *portwatch_present = TRUE;

    portwatch_ports[i] = port;
   } else {
    ipc_port_release_send(port);
   }

   break;
  default:
   ret = EINVAL;
   break;
  }

  if (ret) {

   ipc_port_release_send(port);
   break;
  }
 }

done:
 if (0 != ret)
  DTRACE_PROC1(spawn__port__failure, mach_port_name_t, act->new_port);
 return (ret);
}
