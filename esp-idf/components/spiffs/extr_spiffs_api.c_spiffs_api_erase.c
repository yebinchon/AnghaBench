
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ user_data; } ;
typedef TYPE_1__ spiffs ;
typedef int s32_t ;
struct TYPE_5__ {int partition; } ;
typedef TYPE_2__ esp_spiffs_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,int ,int ,scalar_t__) ;
 int TAG ;
 scalar_t__ esp_partition_erase_range (int ,int ,int ) ;

s32_t spiffs_api_erase(spiffs *fs, uint32_t addr, uint32_t size)
{
    esp_err_t err = esp_partition_erase_range(((esp_spiffs_t *)(fs->user_data))->partition,
                                        addr, size);
    if (err) {
        ESP_LOGE(TAG, "failed to erase addr %08x, size %08x, err %d", addr, size, err);
        return -1;
    }
    return 0;
}
