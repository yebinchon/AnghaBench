
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ protection; scalar_t__ max_protection; scalar_t__ inheritance; scalar_t__ superpage_size; scalar_t__ wired_count; scalar_t__ user_wired_count; scalar_t__ zero_wired_pages; scalar_t__ permanent; scalar_t__ no_cache; scalar_t__ in_transition; scalar_t__ is_sub_map; } ;
struct TYPE_8__ {int ref_count; scalar_t__ wired_page_count; scalar_t__ purgable; scalar_t__ copy_strategy; scalar_t__ wimg_bits; int code_signed; int true_share; scalar_t__ internal; struct TYPE_8__* shadow; struct TYPE_8__* copy; } ;


 scalar_t__ FALSE ;
 scalar_t__ MEMORY_OBJECT_COPY_DELAY ;
 scalar_t__ TRUE ;
 int VME_ALIAS (TYPE_2__*) ;
 TYPE_1__* VME_OBJECT (TYPE_2__*) ;
 scalar_t__ VM_INHERIT_DEFAULT ;







 TYPE_1__* VM_OBJECT_NULL ;
 scalar_t__ VM_PROT_ALL ;
 scalar_t__ VM_PROT_DEFAULT ;
 scalar_t__ VM_PURGABLE_DENY ;
 scalar_t__ VM_WIMG_USE_DEFAULT ;

__attribute__((used)) static boolean_t
vm_map_entry_is_reusable(
 vm_map_entry_t entry)
{


 vm_object_t object;

 if (entry->is_sub_map) {
  return FALSE;
 }

 switch (VME_ALIAS(entry)) {
 case 134:
 case 130:
 case 133:
 case 128:
 case 129:
 case 132:
 case 131:





  break;
 default:




  return TRUE;
 }

 if (
     entry->is_sub_map ||
     entry->in_transition ||
     entry->protection != VM_PROT_DEFAULT ||
     entry->max_protection != VM_PROT_ALL ||
     entry->inheritance != VM_INHERIT_DEFAULT ||
     entry->no_cache ||
     entry->permanent ||
     entry->superpage_size != FALSE ||
     entry->zero_wired_pages ||
     entry->wired_count != 0 ||
     entry->user_wired_count != 0) {
  return FALSE;
 }

 object = VME_OBJECT(entry);
 if (object == VM_OBJECT_NULL) {
  return TRUE;
 }
 if (
     object->wired_page_count == 0 &&
     object->copy == VM_OBJECT_NULL &&
     object->shadow == VM_OBJECT_NULL &&
     object->internal &&
     object->purgable == VM_PURGABLE_DENY &&
     object->copy_strategy != MEMORY_OBJECT_COPY_DELAY &&
     !object->true_share &&
     object->wimg_bits == VM_WIMG_USE_DEFAULT &&
     !object->code_signed) {
  return TRUE;
 }
 return FALSE;


}
