
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_object_t ;
typedef TYPE_2__* vm_named_entry_t ;
typedef int uint32_t ;
typedef TYPE_3__* ipc_port_t ;
struct TYPE_13__ {scalar_t__ ip_kobject; } ;
struct TYPE_11__ {int object; } ;
struct TYPE_12__ {int protection; TYPE_1__ backing; int is_copy; int is_sub_map; int Lock; int ref_count; } ;


 scalar_t__ IKOT_NAMED_ENTRY ;
 scalar_t__ IP_VALID (TYPE_3__*) ;
 int VM_OBJECT_NULL ;
 int VM_PROT_WRITE ;
 scalar_t__ ip_active (TYPE_3__*) ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int ip_lock (TYPE_3__*) ;
 int ip_unlock (TYPE_3__*) ;
 int lck_mtx_try_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mach_destroy_memory_entry (TYPE_3__*) ;
 int mutex_pause (int ) ;
 int vm_object_reference (int ) ;

vm_object_t
convert_port_entry_to_object(
 ipc_port_t port)
{
 vm_object_t object = VM_OBJECT_NULL;
 vm_named_entry_t named_entry;
 uint32_t try_failed_count = 0;

 if (IP_VALID(port) &&
     (ip_kotype(port) == IKOT_NAMED_ENTRY)) {
 try_again:
  ip_lock(port);
  if (ip_active(port) &&
      (ip_kotype(port) == IKOT_NAMED_ENTRY)) {
   named_entry = (vm_named_entry_t)port->ip_kobject;
   if (!(lck_mtx_try_lock(&(named_entry)->Lock))) {
    ip_unlock(port);
    try_failed_count++;
    mutex_pause(try_failed_count);
                         goto try_again;
   }
   named_entry->ref_count++;
   lck_mtx_unlock(&(named_entry)->Lock);
   ip_unlock(port);
   if (!(named_entry->is_sub_map) &&
       !(named_entry->is_copy) &&
       (named_entry->protection & VM_PROT_WRITE)) {
    object = named_entry->backing.object;
    vm_object_reference(object);
   }
   mach_destroy_memory_entry(port);
  }
 }

 return object;
}
