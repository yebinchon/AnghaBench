
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_urefs_t ;
typedef int mach_port_type_t ;
typedef int mach_port_right_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_entry_t ;


 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;

 int MACH_PORT_RIGHT_NUMBER ;




 int MACH_PORT_TYPE (int) ;
 int MACH_PORT_VALID (int ) ;
 int assert (int) ;
 scalar_t__ ipc_right_info (scalar_t__,int ,int ,int*,int*) ;
 scalar_t__ ipc_right_lookup_write (scalar_t__,int ,int *) ;
 int kGUARD_EXC_INVALID_NAME ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;
 int panic (char*) ;

kern_return_t
mach_port_get_refs(
 ipc_space_t space,
 mach_port_name_t name,
 mach_port_right_t right,
 mach_port_urefs_t *urefsp)
{
 mach_port_type_t type;
 mach_port_urefs_t urefs;
 ipc_entry_t entry;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (right >= MACH_PORT_RIGHT_NUMBER)
  return KERN_INVALID_VALUE;

 if (!MACH_PORT_VALID(name)) {
    if (right == 129 ||
      right == 128) {
   *urefsp = 1;
   return KERN_SUCCESS;
  }
  return KERN_INVALID_NAME;
 }

 kr = ipc_right_lookup_write(space, name, &entry);
 if (kr != KERN_SUCCESS) {
  mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_NAME);
  return kr;
 }


 kr = ipc_right_info(space, name, entry, &type, &urefs);


 if (kr != KERN_SUCCESS)
  return kr;

 if (type & MACH_PORT_TYPE(right))
  switch (right) {
      case 128:
   assert(urefs == 1);


      case 131:
      case 130:
   *urefsp = 1;
   break;

      case 132:
      case 129:
   assert(urefs > 0);
   *urefsp = urefs;
   break;

      default:
   panic("mach_port_get_refs: strange rights");
  }
 else
  *urefsp = 0;

 return kr;
}
