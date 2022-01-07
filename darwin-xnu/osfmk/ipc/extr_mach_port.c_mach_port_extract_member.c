
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_pset_t ;
typedef int ipc_port_t ;
typedef scalar_t__ ipc_object_t ;


 scalar_t__ IO_NULL ;
 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_RIGHT_PORT_SET ;
 int MACH_PORT_RIGHT_RECEIVE ;
 int MACH_PORT_VALID (int ) ;
 int __IGNORE_WCASTALIGN (scalar_t__) ;
 int assert (int) ;
 int io_unlock (scalar_t__) ;
 scalar_t__ ipc_object_translate_two (scalar_t__,int ,int ,scalar_t__*,int ,int ,scalar_t__*) ;
 scalar_t__ ipc_pset_remove (int ,int ) ;

kern_return_t
mach_port_extract_member(
 ipc_space_t space,
 mach_port_name_t name,
 mach_port_name_t psname)
{
 ipc_object_t psobj;
 ipc_object_t obj;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(name) || !MACH_PORT_VALID(psname))
  return KERN_INVALID_RIGHT;

 kr = ipc_object_translate_two(space,
          name, MACH_PORT_RIGHT_RECEIVE, &obj,
          psname, MACH_PORT_RIGHT_PORT_SET, &psobj);
 if (kr != KERN_SUCCESS)
  return kr;


 assert(psobj != IO_NULL);
 assert(obj != IO_NULL);

 __IGNORE_WCASTALIGN(kr = ipc_pset_remove((ipc_pset_t)psobj, (ipc_port_t)obj));

 io_unlock(psobj);
 io_unlock(obj);

 return kr;
}
