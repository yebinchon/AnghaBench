
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int mach_port_name_t ;
typedef int ipc_port_t ;
typedef int ipc_object_t ;


 scalar_t__ IP_VALID (int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_COPY_SEND ;
 scalar_t__ MACH_PORT_VALID (int ) ;
 int THREAD_NULL ;
 int convert_port_to_thread (int ) ;
 int current_space () ;
 scalar_t__ ipc_object_copyin (int ,int ,int ,int *) ;
 int ipc_port_release_send (int ) ;

thread_t
port_name_to_thread(
 mach_port_name_t name)
{
 thread_t thread = THREAD_NULL;
 ipc_port_t kport;

 if (MACH_PORT_VALID(name)) {
  if (ipc_object_copyin(current_space(), name,
            MACH_MSG_TYPE_COPY_SEND,
         (ipc_object_t *)&kport) != KERN_SUCCESS)
   return (THREAD_NULL);

  thread = convert_port_to_thread(kport);

  if (IP_VALID(kport))
   ipc_port_release_send(kport);
 }

 return (thread);
}
