
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int address; } ;
typedef TYPE_1__ esp_partition_t ;
struct TYPE_6__ {int size; int offset; } ;
typedef TYPE_2__ esp_partition_pos_t ;
typedef int esp_image_metadata_t ;
typedef int esp_image_load_mode_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_OTA_VALIDATE_FAILED ;
 scalar_t__ ESP_OK ;
 scalar_t__ esp_image_verify (int ,TYPE_2__ const*,int *) ;

__attribute__((used)) static esp_err_t image_validate(const esp_partition_t *partition, esp_image_load_mode_t load_mode)
{
    esp_image_metadata_t data;
    const esp_partition_pos_t part_pos = {
        .offset = partition->address,
        .size = partition->size,
    };

    if (esp_image_verify(load_mode, &part_pos, &data) != ESP_OK) {
        return ESP_ERR_OTA_VALIDATE_FAILED;
    }

    return ESP_OK;
}
