
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_entry_t ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_VALID (int ) ;
 int TRUE ;
 scalar_t__ ipc_right_destroy (scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ ipc_right_lookup_write (scalar_t__,int ,int *) ;
 int kGUARD_EXC_INVALID_NAME ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;

kern_return_t
mach_port_destroy(
 ipc_space_t space,
 mach_port_name_t name)
{
 ipc_entry_t entry;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(name))
  return KERN_SUCCESS;

 kr = ipc_right_lookup_write(space, name, &entry);
 if (kr != KERN_SUCCESS) {
  mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_NAME);
  return kr;
 }


 kr = ipc_right_destroy(space, name, entry, TRUE, 0);
 return kr;
}
