
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_11__ {int should_cow_but_wired; } ;
struct TYPE_10__ {scalar_t__ wired_count; scalar_t__ needs_copy; scalar_t__ is_sub_map; } ;
struct TYPE_9__ {scalar_t__ copy_strategy; int vo_size; scalar_t__ true_share; int internal; } ;


 int ANON_CHUNK_SIZE ;
 int FALSE ;
 scalar_t__ MEMORY_OBJECT_COPY_SYMMETRIC ;
 int TRUE ;
 scalar_t__ VME_ALIAS (TYPE_2__*) ;
 TYPE_1__* VME_OBJECT (TYPE_2__*) ;
 scalar_t__ VM_MEMORY_MALLOC ;
 scalar_t__ VM_MEMORY_MALLOC_SMALL ;
 TYPE_1__* VM_OBJECT_NULL ;
 TYPE_4__ vm_counters ;

boolean_t
vm_map_entry_should_cow_for_true_share(
 vm_map_entry_t entry)
{
 vm_object_t object;

 if (entry->is_sub_map) {

  return FALSE;
 }

 if (entry->needs_copy) {

  return FALSE;
 }

 if (VME_ALIAS(entry) != VM_MEMORY_MALLOC &&
     VME_ALIAS(entry) != VM_MEMORY_MALLOC_SMALL) {

  return FALSE;
 }

 if (entry->wired_count) {

  vm_counters.should_cow_but_wired++;
  return FALSE;
 }

 object = VME_OBJECT(entry);

 if (object == VM_OBJECT_NULL) {

  return FALSE;
 }

 if (!object->internal) {

  return FALSE;
 }

 if (object->copy_strategy != MEMORY_OBJECT_COPY_SYMMETRIC) {

  return FALSE;
 }

 if (object->true_share) {

  return FALSE;
 }

 if (VME_ALIAS(entry) == VM_MEMORY_MALLOC &&
     object->vo_size != ANON_CHUNK_SIZE) {

  return FALSE;
 }

 if (VME_ALIAS(entry) == VM_MEMORY_MALLOC_SMALL &&
     object->vo_size != 2048 * 4096) {

  return FALSE;
 }







 return TRUE;
}
