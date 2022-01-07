
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_object_t ;
typedef int vm_object_offset_t ;
typedef TYPE_2__* vm_named_entry_t ;
typedef int ppnum_t ;
typedef int kern_return_t ;
typedef TYPE_3__* ipc_port_t ;
struct TYPE_11__ {scalar_t__ ip_kobject; } ;
struct TYPE_9__ {scalar_t__ object; } ;
struct TYPE_10__ {TYPE_1__ backing; scalar_t__ is_copy; scalar_t__ is_sub_map; } ;


 scalar_t__ IKOT_NAMED_ENTRY ;
 int IP_VALID (TYPE_3__*) ;
 int KERN_INVALID_ARGUMENT ;
 scalar_t__ VM_OBJECT_NULL ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int named_entry_lock (TYPE_2__*) ;
 int named_entry_unlock (TYPE_2__*) ;
 int vm_object_deallocate (scalar_t__) ;
 int vm_object_page_op (scalar_t__,int ,int,int *,int*) ;
 int vm_object_reference (scalar_t__) ;

kern_return_t
mach_memory_entry_page_op(
 ipc_port_t entry_port,
 vm_object_offset_t offset,
 int ops,
 ppnum_t *phys_entry,
 int *flags)
{
 vm_named_entry_t mem_entry;
 vm_object_t object;
 kern_return_t kr;

 if (!IP_VALID(entry_port) ||
     ip_kotype(entry_port) != IKOT_NAMED_ENTRY) {
  return KERN_INVALID_ARGUMENT;
 }

 mem_entry = (vm_named_entry_t) entry_port->ip_kobject;

 named_entry_lock(mem_entry);

 if (mem_entry->is_sub_map ||
     mem_entry->is_copy) {
  named_entry_unlock(mem_entry);
  return KERN_INVALID_ARGUMENT;
 }

 object = mem_entry->backing.object;
 if (object == VM_OBJECT_NULL) {
  named_entry_unlock(mem_entry);
  return KERN_INVALID_ARGUMENT;
 }

 vm_object_reference(object);
 named_entry_unlock(mem_entry);

 kr = vm_object_page_op(object, offset, ops, phys_entry, flags);

 vm_object_deallocate(object);

 return kr;
}
