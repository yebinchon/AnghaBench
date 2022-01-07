
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_object_offset_t ;
typedef int memory_object_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
typedef int host_t ;
typedef int boolean_t ;


 int mach_memory_object_memory_entry_64 (int ,int ,int ,int ,int ,int *) ;

kern_return_t
mach_memory_object_memory_entry(
 host_t host,
 boolean_t internal,
 vm_size_t size,
 vm_prot_t permission,
  memory_object_t pager,
 ipc_port_t *entry_handle)
{
 return mach_memory_object_memory_entry_64( host, internal,
  (vm_object_offset_t)size, permission, pager, entry_handle);
}
