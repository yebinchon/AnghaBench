
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int kern_return_t ;
struct TYPE_10__ {scalar_t__ is_sub_map; } ;
struct TYPE_9__ {int set_cache_attr; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int TRUE ;
 TYPE_1__* VME_OBJECT (TYPE_2__*) ;
 TYPE_1__* VM_OBJECT_NULL ;
 int vm_map_lock_read (int ) ;
 int vm_map_lookup_entry (int ,int ,TYPE_2__**) ;
 int vm_map_set_cache_attr_count ;
 int vm_map_unlock_read (int ) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;

kern_return_t
vm_map_set_cache_attr(
 vm_map_t map,
 vm_map_offset_t va)
{
 vm_map_entry_t map_entry;
 vm_object_t object;
 kern_return_t kr = KERN_SUCCESS;

 vm_map_lock_read(map);

 if (!vm_map_lookup_entry(map, va, &map_entry) ||
     map_entry->is_sub_map) {



  kr = KERN_INVALID_ARGUMENT;
  goto done;
 }
 object = VME_OBJECT(map_entry);

 if (object == VM_OBJECT_NULL) {



  kr = KERN_INVALID_ARGUMENT;
  goto done;
 }
 vm_object_lock(object);
 object->set_cache_attr = TRUE;
 vm_object_unlock(object);

 vm_map_set_cache_attr_count++;
done:
 vm_map_unlock_read(map);

 return kr;
}
