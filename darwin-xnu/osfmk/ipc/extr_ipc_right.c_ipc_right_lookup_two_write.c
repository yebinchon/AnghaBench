
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
 int kGUARD_EXC_INVALID_NAME ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;

kern_return_t
ipc_right_lookup_two_write(
 ipc_space_t space,
 mach_port_name_t name1,
 ipc_entry_t *entryp1,
 mach_port_name_t name2,
 ipc_entry_t *entryp2)
{
 ipc_entry_t entry1;
 ipc_entry_t entry2;

 assert(space != IS_NULL);

 is_write_lock(space);

 if (!is_active(space)) {
  is_write_unlock(space);
  return KERN_INVALID_TASK;
 }

 if ((entry1 = ipc_entry_lookup(space, name1)) == IE_NULL) {
  is_write_unlock(space);
  mach_port_guard_exception(name1, 0, 0, kGUARD_EXC_INVALID_NAME);
  return KERN_INVALID_NAME;
 }
 if ((entry2 = ipc_entry_lookup(space, name2)) == IE_NULL) {
  is_write_unlock(space);
  mach_port_guard_exception(name2, 0, 0, kGUARD_EXC_INVALID_NAME);
  return KERN_INVALID_NAME;
 }
 *entryp1 = entry1;
 *entryp2 = entry2;
 return KERN_SUCCESS;
}
