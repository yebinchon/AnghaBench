
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_object_t ;
typedef TYPE_2__* vm_named_entry_t ;
typedef int uint32_t ;
typedef int kern_return_t ;
typedef TYPE_3__* ipc_port_t ;
struct TYPE_11__ {scalar_t__ ip_kobject; } ;
struct TYPE_9__ {scalar_t__ object; } ;
struct TYPE_10__ {TYPE_1__ backing; scalar_t__ is_copy; scalar_t__ is_sub_map; } ;


 scalar_t__ IKOT_NAMED_ENTRY ;
 int IP_VALID (TYPE_3__*) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NOT_SUPPORTED ;
 int KERN_SUCCESS ;
 scalar_t__ VM_OBJECT_NULL ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int named_entry_lock (TYPE_2__*) ;
 int named_entry_unlock (TYPE_2__*) ;
 int vm_object_access_tracking (scalar_t__,int*,int *,int *) ;

kern_return_t
memory_entry_access_tracking_internal(
 ipc_port_t entry_port,
 int *access_tracking,
 uint32_t *access_tracking_reads,
 uint32_t *access_tracking_writes)
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
 (void) access_tracking;
 (void) access_tracking_reads;
 (void) access_tracking_writes;
 kr = KERN_NOT_SUPPORTED;


 named_entry_unlock(mem_entry);

 return kr;
}
