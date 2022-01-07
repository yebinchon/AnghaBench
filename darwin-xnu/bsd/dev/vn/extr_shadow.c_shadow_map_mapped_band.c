
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zeroth_band; size_t* bands; scalar_t__ next_band; } ;
typedef TYPE_1__ shadow_map_t ;
typedef scalar_t__ boolean_t ;
typedef size_t band_number_t ;


 size_t BAND_ZERO ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static boolean_t
shadow_map_mapped_band(shadow_map_t * map, band_number_t band,
         boolean_t map_it, band_number_t * mapped_band)
{
    boolean_t is_mapped = FALSE;

    if (band == map->zeroth_band) {
 *mapped_band = BAND_ZERO;
 is_mapped = TRUE;
    }
    else {
 *mapped_band = map->bands[band];
 if (*mapped_band == BAND_ZERO) {
     if (map_it) {

  if (map->next_band == 0) {

      map->zeroth_band = band;
  }
  *mapped_band = map->bands[band] = map->next_band++;
  is_mapped = TRUE;
     }
 }
 else {
     is_mapped = TRUE;
 }
    }
    return (is_mapped);
}
