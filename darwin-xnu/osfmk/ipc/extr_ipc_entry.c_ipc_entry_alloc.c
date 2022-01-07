
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_entry_t ;


 int ITS_SIZE_NONE ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ipc_entry_get (int ,int *,int *) ;
 scalar_t__ ipc_entry_grow_table (int ,int ) ;
 int is_active (int ) ;
 int is_write_lock (int ) ;
 int is_write_unlock (int ) ;

kern_return_t
ipc_entry_alloc(
 ipc_space_t space,
 mach_port_name_t *namep,
 ipc_entry_t *entryp)
{
 kern_return_t kr;

 is_write_lock(space);

 for (;;) {
  if (!is_active(space)) {
   is_write_unlock(space);
   return KERN_INVALID_TASK;
  }

  kr = ipc_entry_get(space, namep, entryp);
  if (kr == KERN_SUCCESS)
   return kr;

  kr = ipc_entry_grow_table(space, ITS_SIZE_NONE);
  if (kr != KERN_SUCCESS)
   return kr;
 }
}
