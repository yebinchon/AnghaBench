
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct label {int dummy; } ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_t ;
struct TYPE_8__ {scalar_t__ port; int privileged; } ;
struct TYPE_7__ {scalar_t__ itk_self; scalar_t__ itk_sself; int exec_token; scalar_t__ itk_debug_control; TYPE_3__* exc_actions; } ;


 int EXC_CORPSE_NOTIFY ;
 int EXC_TYPES_COUNT ;
 int FIRST_EXCEPTION ;
 int IKOT_NONE ;
 int IKOT_TASK ;
 int IKO_NULL ;
 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (scalar_t__) ;
 int ip_lock (scalar_t__) ;
 int ip_unlock (scalar_t__) ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 int ipc_kobject_set_atomically (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 int ipc_port_dealloc_kernel (scalar_t__) ;
 scalar_t__ ipc_port_make_send (scalar_t__) ;
 int ipc_port_release_send (scalar_t__) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;
 struct label* mac_exc_create_label () ;
 int mac_exc_free_label (struct label*) ;
 int mac_exc_update_action_label (TYPE_3__*,struct label*) ;
 int panic (char*) ;
 scalar_t__ task_corpse_pending_report (TYPE_1__*) ;

void
ipc_task_reset(
 task_t task)
{
 ipc_port_t old_kport, new_kport;
 ipc_port_t old_sself;
 ipc_port_t old_exc_actions[EXC_TYPES_COUNT];
 int i;






 new_kport = ipc_port_alloc_kernel();
 if (new_kport == IP_NULL)
  panic("ipc_task_reset");

 itk_lock(task);

 old_kport = task->itk_self;

 if (old_kport == IP_NULL) {

  itk_unlock(task);
  ipc_port_dealloc_kernel(new_kport);



  return;
 }

 task->itk_self = new_kport;
 old_sself = task->itk_sself;
 task->itk_sself = ipc_port_make_send(new_kport);


 ip_lock(old_kport);
 ipc_kobject_set_atomically(old_kport, IKO_NULL, IKOT_NONE);
 task->exec_token += 1;
 ip_unlock(old_kport);

 ipc_kobject_set(new_kport, (ipc_kobject_t) task, IKOT_TASK);

 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
  old_exc_actions[i] = IP_NULL;

  if (i == EXC_CORPSE_NOTIFY && task_corpse_pending_report(task)) {
   continue;
  }

  if (!task->exc_actions[i].privileged) {



   old_exc_actions[i] = task->exc_actions[i].port;
   task->exc_actions[i].port = IP_NULL;
  }
 }

 if (IP_VALID(task->itk_debug_control)) {
  ipc_port_release_send(task->itk_debug_control);
 }
 task->itk_debug_control = IP_NULL;

 itk_unlock(task);







 if (IP_VALID(old_sself))
  ipc_port_release_send(old_sself);

 for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
  if (IP_VALID(old_exc_actions[i])) {
   ipc_port_release_send(old_exc_actions[i]);
  }
 }


 ipc_port_dealloc_kernel(old_kport);
}
