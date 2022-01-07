
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_entry_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ipc_entries_hold (int ,int) ;
 scalar_t__ ipc_entry_claim (int ,int *,int *) ;

kern_return_t
ipc_entry_get(
 ipc_space_t space,
 mach_port_name_t *namep,
 ipc_entry_t *entryp)
{
 kern_return_t kr;

 kr = ipc_entries_hold(space, 1);
 if (KERN_SUCCESS != kr)
  return kr;

 return ipc_entry_claim(space, namep, entryp);
}
