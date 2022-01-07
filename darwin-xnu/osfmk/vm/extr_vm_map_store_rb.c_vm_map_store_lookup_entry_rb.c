
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct vm_map_store {int dummy; } ;
struct vm_map_header {int rb_head_store; } ;
typedef int boolean_t ;
struct TYPE_10__ {scalar_t__ vme_start; scalar_t__ vme_end; } ;
struct TYPE_9__ {struct vm_map_header hdr; } ;


 int FALSE ;
 struct vm_map_store* RB_LEFT (struct vm_map_store*,int ) ;
 struct vm_map_store* RB_RIGHT (struct vm_map_store*,int ) ;
 struct vm_map_store* RB_ROOT (int *) ;
 int TRUE ;
 TYPE_2__* VME_FOR_STORE (struct vm_map_store*) ;
 TYPE_2__* VM_MAP_ENTRY_NULL ;
 int entry ;
 int panic (char*) ;
 TYPE_2__* vm_map_to_entry (TYPE_1__*) ;

boolean_t vm_map_store_lookup_entry_rb( vm_map_t map, vm_map_offset_t address, vm_map_entry_t *vm_entry)
{
 struct vm_map_header hdr = map->hdr;
 struct vm_map_store *rb_entry = RB_ROOT(&(hdr.rb_head_store));
 vm_map_entry_t cur = vm_map_to_entry(map);
 vm_map_entry_t prev = VM_MAP_ENTRY_NULL;

 while (rb_entry != (struct vm_map_store*)((void*)0)) {
         cur = VME_FOR_STORE(rb_entry);
  if(cur == VM_MAP_ENTRY_NULL)
   panic("no entry");
  if (address >= cur->vme_start) {
   if (address < cur->vme_end) {
    *vm_entry = cur;
    return TRUE;
   }
   rb_entry = RB_RIGHT(rb_entry, entry);
   prev = cur;
  } else {
   rb_entry = RB_LEFT(rb_entry, entry);
  }
 }
 if( prev == VM_MAP_ENTRY_NULL){
  prev = vm_map_to_entry(map);
 }
 *vm_entry = prev;
 return FALSE;
}
