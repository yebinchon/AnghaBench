
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_urefs_t ;
typedef int mach_port_type_t ;
typedef scalar_t__ mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_entry_t ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_PORT_DEAD ;
 scalar_t__ MACH_PORT_NULL ;
 int MACH_PORT_TYPE_DEAD_NAME ;
 int MACH_PORT_TYPE_SPREQUEST ;
 int MACH_PORT_TYPE_SPREQUEST_DELAYED ;
 scalar_t__ ipc_right_info (scalar_t__,scalar_t__,int ,int*,int *) ;
 scalar_t__ ipc_right_lookup_write (scalar_t__,scalar_t__,int *) ;
 int kGUARD_EXC_INVALID_NAME ;
 int mach_port_guard_exception (scalar_t__,int ,int ,int ) ;

kern_return_t
mach_port_type(
 ipc_space_t space,
 mach_port_name_t name,
 mach_port_type_t *typep)
{
 mach_port_urefs_t urefs;
 ipc_entry_t entry;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (name == MACH_PORT_NULL)
  return KERN_INVALID_NAME;

 if (name == MACH_PORT_DEAD) {
  *typep = MACH_PORT_TYPE_DEAD_NAME;
  return KERN_SUCCESS;
 }

 kr = ipc_right_lookup_write(space, name, &entry);
 if (kr != KERN_SUCCESS) {
  mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_NAME);
  return kr;
 }


 kr = ipc_right_info(space, name, entry, typep, &urefs);




        *typep &= ~(MACH_PORT_TYPE_SPREQUEST | MACH_PORT_TYPE_SPREQUEST_DELAYED);


 return kr;
}
