
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_port_t ;
typedef int ipc_object_t ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_PORT_ANY (int ) ;
 int MACH_PORT_VALID (int ) ;
 scalar_t__ ipc_object_copyin (scalar_t__,int ,int ,int *) ;
 int ipc_object_copyin_type (int ) ;

kern_return_t
mach_port_extract_right(
 ipc_space_t space,
 mach_port_name_t name,
 mach_msg_type_name_t msgt_name,
 ipc_port_t *poly,
 mach_msg_type_name_t *polyPoly)
{
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_MSG_TYPE_PORT_ANY(msgt_name))
  return KERN_INVALID_VALUE;

 if (!MACH_PORT_VALID(name)) {





  return KERN_INVALID_RIGHT;
 }

 kr = ipc_object_copyin(space, name, msgt_name, (ipc_object_t *) poly);

 if (kr == KERN_SUCCESS)
  *polyPoly = ipc_object_copyin_type(msgt_name);
 return kr;
}
