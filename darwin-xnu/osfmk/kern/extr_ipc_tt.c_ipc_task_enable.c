
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_t ;
struct TYPE_5__ {scalar_t__ itk_self; scalar_t__ itk_nself; } ;


 int IKOT_TASK ;
 int IKOT_TASK_NAME ;
 scalar_t__ IP_NULL ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;

void
ipc_task_enable(
 task_t task)
{
 ipc_port_t kport;
 ipc_port_t nport;

 itk_lock(task);
 kport = task->itk_self;
 if (kport != IP_NULL)
  ipc_kobject_set(kport, (ipc_kobject_t) task, IKOT_TASK);
 nport = task->itk_nself;
 if (nport != IP_NULL)
  ipc_kobject_set(nport, (ipc_kobject_t) task, IKOT_TASK_NAME);
 itk_unlock(task);
}
