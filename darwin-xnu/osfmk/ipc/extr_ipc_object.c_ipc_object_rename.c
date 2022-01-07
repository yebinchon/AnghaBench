
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_entry_t ;


 int IE_NULL ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_NAME_EXISTS ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ipc_entry_alloc_name (int ,int ,int *) ;
 int ipc_entry_dealloc (int ,int ,int ) ;
 int ipc_entry_lookup (int ,int ) ;
 scalar_t__ ipc_right_inuse (int ,int ,int ) ;
 scalar_t__ ipc_right_rename (int ,int ,int ,int ,int ) ;
 int is_write_unlock (int ) ;

kern_return_t
ipc_object_rename(
 ipc_space_t space,
 mach_port_name_t oname,
 mach_port_name_t nname)
{
 ipc_entry_t oentry, nentry;
 kern_return_t kr;

 kr = ipc_entry_alloc_name(space, nname, &nentry);
 if (kr != KERN_SUCCESS)
  return kr;



 if (ipc_right_inuse(space, nname, nentry)) {

  return KERN_NAME_EXISTS;
 }



 if ((oname == nname) ||
     ((oentry = ipc_entry_lookup(space, oname)) == IE_NULL)) {
  ipc_entry_dealloc(space, nname, nentry);
  is_write_unlock(space);
  return KERN_INVALID_NAME;
 }

 kr = ipc_right_rename(space, oname, oentry, nname, nentry);

 return kr;
}
