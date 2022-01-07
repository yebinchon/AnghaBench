
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_port_t ;
typedef int ipc_object_t ;


 scalar_t__ IP_VALID (int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_COPY_SEND ;
 scalar_t__ MACH_PORT_VALID (int ) ;
 int TASK_NULL ;
 int convert_port_to_task (int ) ;
 int current_space () ;
 scalar_t__ ipc_object_copyin (int ,int ,int ,int *) ;
 int ipc_port_release_send (int ) ;

task_t
port_name_to_task(
 mach_port_name_t name)
{
 ipc_port_t kern_port;
 kern_return_t kr;
 task_t task = TASK_NULL;

 if (MACH_PORT_VALID(name)) {
  kr = ipc_object_copyin(current_space(), name,
           MACH_MSG_TYPE_COPY_SEND,
           (ipc_object_t *) &kern_port);
  if (kr != KERN_SUCCESS)
   return TASK_NULL;

  task = convert_port_to_task(kern_port);

  if (IP_VALID(kern_port))
   ipc_port_release_send(kern_port);
 }
 return task;
}
