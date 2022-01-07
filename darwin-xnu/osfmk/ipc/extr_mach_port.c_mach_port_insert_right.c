
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_object_t ;


 int FALSE ;
 int IO_VALID (int ) ;
 scalar_t__ IS_NULL ;
 int KERN_INVALID_CAPABILITY ;
 int KERN_INVALID_TASK ;
 int KERN_INVALID_VALUE ;
 int MACH_MSG_TYPE_PORT_ANY_RIGHT (int ) ;
 int MACH_PORT_VALID (int ) ;
 int ipc_object_copyout_name (scalar_t__,int ,int ,int ,int ) ;

kern_return_t
mach_port_insert_right(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_port_t poly,
 mach_msg_type_name_t polyPoly)
{
 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(name) ||
     !MACH_MSG_TYPE_PORT_ANY_RIGHT(polyPoly))
  return KERN_INVALID_VALUE;

 if (!IO_VALID((ipc_object_t) poly))
  return KERN_INVALID_CAPABILITY;

 return ipc_object_copyout_name(space, (ipc_object_t) poly,
           polyPoly, FALSE, name);
}
