
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef scalar_t__ vm_offset_t ;
typedef int boolean_t ;


 int FALSE ;
 int VM_KERN_MEMORY_NONE ;
 scalar_t__ try_alloc_from_zone (int ,int ,int *) ;
 int zalloc_poison_element (int ,int ,scalar_t__) ;

void *
zalloc_attempt(zone_t zone)
{
 boolean_t check_poison = FALSE;
 vm_offset_t addr = try_alloc_from_zone(zone, VM_KERN_MEMORY_NONE, &check_poison);
 zalloc_poison_element(check_poison, zone, addr);
 return (void *)addr;
}
