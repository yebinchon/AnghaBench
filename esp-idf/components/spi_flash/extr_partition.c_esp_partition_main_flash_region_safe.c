
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t address; size_t size; } ;
typedef TYPE_1__ esp_partition_t ;


 size_t ESP_PARTITION_TABLE_MAX_LEN ;
 size_t ESP_PARTITION_TABLE_OFFSET ;
 TYPE_1__* esp_ota_get_running_partition () ;

bool esp_partition_main_flash_region_safe(size_t addr, size_t size)
{
    bool result = 1;
    if (addr <= ESP_PARTITION_TABLE_OFFSET + ESP_PARTITION_TABLE_MAX_LEN) {
        return 0;
    }
    const esp_partition_t *p = esp_ota_get_running_partition();
    if (addr >= p->address && addr < p->address + p->size) {
        return 0;
    }
    if (addr < p->address && addr + size > p->address) {
        return 0;
    }
    return result;
}
