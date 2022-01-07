
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_object_t ;


 int CAST_MACH_PORT_TO_NAME (scalar_t__) ;
 scalar_t__ IP_VALID (scalar_t__) ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_PORT_SEND ;
 int MACH_PORT_DEAD ;
 int MACH_PORT_NULL ;
 int TRUE ;
 scalar_t__ ipc_object_copyout_name (int ,int ,int ,int ,int ) ;
 int ipc_port_release_send (scalar_t__) ;

mach_port_name_t
ipc_port_copyout_name_send(
 ipc_port_t sright,
 ipc_space_t space,
 mach_port_name_t name)
{
 if (IP_VALID(sright)) {
  kern_return_t kr;

  kr = ipc_object_copyout_name(space, (ipc_object_t) sright,
     MACH_MSG_TYPE_PORT_SEND, TRUE, name);
  if (kr != KERN_SUCCESS) {
   ipc_port_release_send(sright);

   if (kr == KERN_INVALID_CAPABILITY)
    name = MACH_PORT_DEAD;
   else
    name = MACH_PORT_NULL;
  }
 } else
  name = CAST_MACH_PORT_TO_NAME(sright);

 return name;
}
