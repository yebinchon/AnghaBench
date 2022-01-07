
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef int mach_msg_return_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_object_t ;


 int CAST_MACH_PORT_TO_NAME (int ) ;
 int IO_VALID (int ) ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_IPC_KERNEL ;
 int MACH_MSG_IPC_SPACE ;
 int MACH_MSG_SUCCESS ;
 int MACH_PORT_DEAD ;
 int MACH_PORT_NULL ;
 int TRUE ;
 scalar_t__ ipc_object_copyout (int ,int ,int ,int ,int *) ;
 int ipc_object_destroy (int ,int ) ;

mach_msg_return_t
ipc_kmsg_copyout_object(
 ipc_space_t space,
 ipc_object_t object,
 mach_msg_type_name_t msgt_name,
 mach_port_name_t *namep)
{
 kern_return_t kr;

 if (!IO_VALID(object)) {
  *namep = CAST_MACH_PORT_TO_NAME(object);
  return MACH_MSG_SUCCESS;
 }

 kr = ipc_object_copyout(space, object, msgt_name, TRUE, namep);
 if (kr != KERN_SUCCESS) {
  ipc_object_destroy(object, msgt_name);

  if (kr == KERN_INVALID_CAPABILITY)
   *namep = MACH_PORT_DEAD;
  else {
   *namep = MACH_PORT_NULL;

   if (kr == KERN_RESOURCE_SHORTAGE)
    return MACH_MSG_IPC_KERNEL;
   else
    return MACH_MSG_IPC_SPACE;
  }
 }

 return MACH_MSG_SUCCESS;
}
