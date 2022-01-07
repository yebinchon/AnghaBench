
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_5__ {scalar_t__ itk_self; scalar_t__ itk_nself; scalar_t__ itk_resume; } ;


 int IKOT_NONE ;
 int IKO_NULL ;
 scalar_t__ IP_NULL ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;

void
ipc_task_disable(
 task_t task)
{
 ipc_port_t kport;
 ipc_port_t nport;
 ipc_port_t rport;

 itk_lock(task);
 kport = task->itk_self;
 if (kport != IP_NULL)
  ipc_kobject_set(kport, IKO_NULL, IKOT_NONE);
 nport = task->itk_nself;
 if (nport != IP_NULL)
  ipc_kobject_set(nport, IKO_NULL, IKOT_NONE);

 rport = task->itk_resume;
 if (rport != IP_NULL) {
  ipc_kobject_set(rport, IKO_NULL, IKOT_NONE);
 }
 itk_unlock(task);
}
