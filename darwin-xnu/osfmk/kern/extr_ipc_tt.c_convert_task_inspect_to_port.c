
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_inspect_t ;
typedef int ipc_port_t ;


 int IP_NULL ;
 int task_deallocate (int ) ;

ipc_port_t
convert_task_inspect_to_port(
 task_inspect_t task)
{
 task_deallocate(task);

 return IP_NULL;
}
