
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int ipc_port_t ;


 int convert_port_to_task_with_exec_token (int ,int *) ;

task_t
convert_port_to_task(
 ipc_port_t port)
{
 return convert_port_to_task_with_exec_token(port, ((void*)0));
}
