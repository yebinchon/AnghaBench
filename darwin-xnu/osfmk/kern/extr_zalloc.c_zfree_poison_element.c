
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {scalar_t__ elem_size; int zp_count; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ ZP_POISON ;
 scalar_t__ __improbable (scalar_t__) ;
 scalar_t__* get_backup_ptr (scalar_t__,scalar_t__*) ;
 scalar_t__ sample_counter (int *,int) ;
 scalar_t__ zp_factor ;
 int zp_scale ;
 scalar_t__ zp_tiny_zone_limit ;

boolean_t
zfree_poison_element(zone_t zone, vm_offset_t elem)
{
 boolean_t poison = FALSE;
 if (zp_factor != 0 || zp_tiny_zone_limit != 0) {
  vm_offset_t inner_size = zone->elem_size;

  uint32_t sample_factor = zp_factor + (((uint32_t)inner_size) >> zp_scale);

  if (inner_size <= zp_tiny_zone_limit)
   poison = TRUE;
  else if (zp_factor != 0 && sample_counter(&zone->zp_count, sample_factor) == TRUE)
   poison = TRUE;

  if (__improbable(poison)) {



   vm_offset_t *element_cursor = ((vm_offset_t *) elem) + 1;
   vm_offset_t *backup = get_backup_ptr(inner_size, (vm_offset_t *)elem);

   for ( ; element_cursor < backup; element_cursor++)
    *element_cursor = ZP_POISON;
  }
 }
 return poison;
}
