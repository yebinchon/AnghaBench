
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef uintptr_t vm_offset_t ;
struct TYPE_3__ {uintptr_t elem_size; } ;


 uintptr_t zcache_canary ;

void zcache_canary_add(zone_t zone, void *element)
{
 vm_offset_t *primary = (vm_offset_t *)element;
 vm_offset_t *backup = (vm_offset_t *)((vm_offset_t)primary + zone->elem_size - sizeof(vm_offset_t));
 *primary = *backup = (zcache_canary ^ (uintptr_t)element);
}
