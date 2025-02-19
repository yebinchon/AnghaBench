
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef uintptr_t vm_offset_t ;
struct TYPE_3__ {uintptr_t elem_size; } ;


 int panic (char*,void*,void*,void*,void*) ;
 uintptr_t zcache_canary ;

void zcache_canary_validate(zone_t zone, void *element)
{
 vm_offset_t *primary = (vm_offset_t *)element;
 vm_offset_t *backup = (vm_offset_t *)((vm_offset_t)primary + zone->elem_size - sizeof(vm_offset_t));

 vm_offset_t primary_value = (*primary ^ (uintptr_t)element);
 if (primary_value != zcache_canary) {
  panic("Zone cache element was used after free! Element %p was corrupted at beginning; Expected %p but found %p; canary %p",
   element, (void *)(zcache_canary ^ (uintptr_t)element) , (void *)(*primary), (void *)zcache_canary);
 }

 vm_offset_t backup_value = (*backup ^ (uintptr_t)element);
 if (backup_value != zcache_canary) {
  panic("Zone cache element was used after free! Element %p was corrupted at end; Expected %p but found %p; canary %p",
   element, (void *)(zcache_canary ^ (uintptr_t)element), (void *)(*backup), (void *)zcache_canary);
 }
}
