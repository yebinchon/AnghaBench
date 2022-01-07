
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_right_t ;
typedef int mach_port_name_t ;
typedef int mach_port_delta_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_entry_t ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_RIGHT_NUMBER ;
 int MACH_PORT_RIGHT_SEND ;
 int MACH_PORT_RIGHT_SEND_ONCE ;
 int MACH_PORT_VALID (int ) ;
 scalar_t__ ipc_right_delta (scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ ipc_right_lookup_write (scalar_t__,int ,int *) ;
 int kGUARD_EXC_INVALID_NAME ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;

kern_return_t
mach_port_mod_refs(
 ipc_space_t space,
 mach_port_name_t name,
 mach_port_right_t right,
 mach_port_delta_t delta)
{
 ipc_entry_t entry;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (right >= MACH_PORT_RIGHT_NUMBER)
  return KERN_INVALID_VALUE;

 if (!MACH_PORT_VALID(name)) {
  if (right == MACH_PORT_RIGHT_SEND ||
      right == MACH_PORT_RIGHT_SEND_ONCE)
   return KERN_SUCCESS;
  return KERN_INVALID_NAME;
 }

 kr = ipc_right_lookup_write(space, name, &entry);
 if (kr != KERN_SUCCESS) {
  mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_NAME);
  return kr;
 }



 kr = ipc_right_delta(space, name, entry, right, delta);
 return kr;
}
