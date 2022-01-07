
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int ipc_space_t ;


 int _kernelrpc_task_set_port_space (int ,int) ;

kern_return_t
task_set_port_space(
 ipc_space_t task,
 int table_entries)
{
 kern_return_t rv;

 rv = _kernelrpc_task_set_port_space(task, table_entries);

 return (rv);
}
