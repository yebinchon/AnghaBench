
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int vm_offset_t ;
typedef size_t uint32_t ;
struct zcc_magazine {size_t zcc_magazine_index; size_t zcc_magazine_capacity; scalar_t__* zcc_elements; } ;


 int assert (int) ;
 int lock_zone (int ) ;
 int unlock_zone (int ) ;
 int zcache_canary_validate (int ,scalar_t__) ;
 int zfree_direct (int ,int ) ;

void zcache_mag_drain(zone_t zone, struct zcc_magazine *mag)
{
 assert(mag->zcc_magazine_index == mag->zcc_magazine_capacity);
 lock_zone(zone);
 while(mag->zcc_magazine_index > 0){
  uint32_t index = --mag->zcc_magazine_index;
  zcache_canary_validate(zone, mag->zcc_elements[index]);
  zfree_direct(zone,(vm_offset_t)mag->zcc_elements[index]);
  mag->zcc_elements[mag->zcc_magazine_index] = 0;
 }
 unlock_zone(zone);
}
