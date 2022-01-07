
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_name_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_nself; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ ipc_port_make_send (scalar_t__) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;
 int task_name_deallocate (TYPE_1__*) ;

ipc_port_t
convert_task_name_to_port(
 task_name_t task_name)
{
 ipc_port_t port;

 itk_lock(task_name);
 if (task_name->itk_nself != IP_NULL)
  port = ipc_port_make_send(task_name->itk_nself);
 else
  port = IP_NULL;
 itk_unlock(task_name);

 task_name_deallocate(task_name);
 return port;
}
