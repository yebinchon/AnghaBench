
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_offset_t ;
typedef scalar_t__ uint32_t ;
struct zcc_magazine {scalar_t__ zcc_magazine_index; scalar_t__ zcc_magazine_capacity; } ;
struct TYPE_7__ {int elem_size; } ;


 int ASAN_HEAP_FREED ;
 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int kasan_poison_range (int ,int ,int ) ;
 int lock_zone (TYPE_1__*) ;
 int unlock_zone (TYPE_1__*) ;
 void* zalloc_attempt (TYPE_1__*) ;
 int zcache_canary_add (TYPE_1__*,void*) ;
 int zcache_mag_push (struct zcc_magazine*,void*) ;

bool zcache_mag_fill(zone_t zone, struct zcc_magazine *mag)
{
 assert(mag->zcc_magazine_index == 0);
 void* elem = ((void*)0);
 uint32_t i;
 lock_zone(zone);
 for(i = mag->zcc_magazine_index; i < mag->zcc_magazine_capacity; i ++){
  elem = zalloc_attempt(zone);
  if(elem) {
   zcache_canary_add(zone, elem);
   zcache_mag_push(mag, elem);



  } else {
   break;
  }
 }
 unlock_zone(zone);
 if (i == 0){
  return FALSE;
 }
 return TRUE;
}
