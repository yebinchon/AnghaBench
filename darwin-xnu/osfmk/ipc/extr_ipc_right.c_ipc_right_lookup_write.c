
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_entry_t ;


 int IE_NULL ;
 scalar_t__ IS_NULL ;
 int KERN_INVALID_NAME ;
 int KERN_INVALID_TASK ;
 int KERN_SUCCESS ;
 int assert (int) ;
 int ipc_entry_lookup (scalar_t__,int ) ;
 int is_active (scalar_t__) ;
 int is_write_lock (scalar_t__) ;
 int is_write_unlock (scalar_t__) ;

kern_return_t
ipc_right_lookup_write(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t *entryp)
{
 ipc_entry_t entry;

 assert(space != IS_NULL);

 is_write_lock(space);

 if (!is_active(space)) {
  is_write_unlock(space);
  return KERN_INVALID_TASK;
 }

 if ((entry = ipc_entry_lookup(space, name)) == IE_NULL) {
  is_write_unlock(space);
  return KERN_INVALID_NAME;
 }

 *entryp = entry;
 return KERN_SUCCESS;
}
