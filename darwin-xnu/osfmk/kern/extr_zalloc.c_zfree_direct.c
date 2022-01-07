
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int vm_offset_t ;
typedef int boolean_t ;


 int free_to_zone (int ,int ,int ) ;
 int zfree_poison_element (int ,int ) ;

void
zfree_direct(zone_t zone, vm_offset_t elem)
{
 boolean_t poison = zfree_poison_element(zone, elem);
 free_to_zone(zone, elem, poison);
}
