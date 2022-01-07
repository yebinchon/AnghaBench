
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {intptr_t start; intptr_t size; size_t type; } ;
typedef TYPE_1__ soc_memory_region_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int * caps; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int heap_caps_add_region_with_caps (int const*,intptr_t,intptr_t) ;
 int soc_memory_region_count ;
 TYPE_1__* soc_memory_regions ;
 TYPE_2__* soc_memory_types ;

esp_err_t heap_caps_add_region(intptr_t start, intptr_t end)
{
    if (start == 0) {
        return ESP_ERR_INVALID_ARG;
    }

    for (int i = 0; i < soc_memory_region_count; i++) {
        const soc_memory_region_t *region = &soc_memory_regions[i];

        if (region->start <= start && (region->start + region->size) > start) {
            const uint32_t *caps = soc_memory_types[region->type].caps;
            return heap_caps_add_region_with_caps(caps, start, end);
        }
    }

    return ESP_ERR_NOT_FOUND;
}
