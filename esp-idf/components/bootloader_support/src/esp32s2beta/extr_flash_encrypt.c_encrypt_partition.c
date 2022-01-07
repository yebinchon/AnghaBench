
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int offset; } ;
struct TYPE_4__ {int flags; scalar_t__ type; scalar_t__ subtype; TYPE_2__ pos; } ;
typedef TYPE_1__ esp_partition_info_t ;
typedef int esp_image_metadata_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_IMAGE_VERIFY ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int PART_FLAG_ENCRYPTED ;
 scalar_t__ PART_SUBTYPE_DATA_OTA ;
 scalar_t__ PART_TYPE_APP ;
 scalar_t__ PART_TYPE_DATA ;
 int TAG ;
 scalar_t__ esp_flash_encrypt_region (int ,int ) ;
 scalar_t__ esp_image_verify (int ,TYPE_2__*,int *) ;

__attribute__((used)) static esp_err_t encrypt_partition(int index, const esp_partition_info_t *partition)
{
    esp_err_t err;
    bool should_encrypt = (partition->flags & PART_FLAG_ENCRYPTED);

    if (partition->type == PART_TYPE_APP) {

      esp_image_metadata_t data_ignored;
      err = esp_image_verify(ESP_IMAGE_VERIFY,
                           &partition->pos,
                           &data_ignored);
      should_encrypt = (err == ESP_OK);
    } else if (partition->type == PART_TYPE_DATA && partition->subtype == PART_SUBTYPE_DATA_OTA) {

        should_encrypt = 1;
    }

    if (!should_encrypt) {
        return ESP_OK;
    }
    else {

        ESP_LOGI(TAG, "Encrypting partition %d at offset 0x%x (length 0x%x)...", index, partition->pos.offset, partition->pos.size);

        err = esp_flash_encrypt_region(partition->pos.offset, partition->pos.size);
        ESP_LOGI(TAG, "Done encrypting");
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "Failed to encrypt partition %d", index);
        }
        return err;
    }
}
