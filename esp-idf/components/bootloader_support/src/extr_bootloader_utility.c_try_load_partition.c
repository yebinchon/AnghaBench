
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int offset; } ;
typedef TYPE_1__ esp_partition_pos_t ;
typedef int esp_image_metadata_t ;


 int ESP_LOGD (int ,char*) ;
 int ESP_LOGI (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ bootloader_load_image (TYPE_1__ const*,int *) ;

__attribute__((used)) static bool try_load_partition(const esp_partition_pos_t *partition, esp_image_metadata_t *data)
{
    if (partition->size == 0) {
        ESP_LOGD(TAG, "Can't boot from zero-length partition");
        return 0;
    }
    return 0;
}
