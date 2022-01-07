
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; scalar_t__ subtype; int size; } ;
typedef TYPE_1__ esp_partition_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_10__ {int secure_version; } ;
typedef TYPE_2__ esp_app_desc_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NOT_FOUND ;
 scalar_t__ ESP_ERR_OTA_SMALL_SEC_VER ;
 scalar_t__ ESP_ERR_OTA_VALIDATE_FAILED ;
 int ESP_IMAGE_VERIFY ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_FACTORY ;
 int ESP_PARTITION_SUBTYPE_DATA_OTA ;
 scalar_t__ ESP_PARTITION_TYPE_APP ;
 int ESP_PARTITION_TYPE_DATA ;
 int TAG ;
 int esp_efuse_check_secure_version (int ) ;
 scalar_t__ esp_ota_get_partition_description (TYPE_1__ const*,TYPE_2__*) ;
 scalar_t__ esp_partition_erase_range (TYPE_1__ const*,int ,int ) ;
 TYPE_1__* esp_partition_find_first (int ,int ,int *) ;
 scalar_t__ esp_rewrite_ota_data (scalar_t__) ;
 scalar_t__ image_validate (TYPE_1__ const*,int ) ;

esp_err_t esp_ota_set_boot_partition(const esp_partition_t *partition)
{
    if (partition == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (image_validate(partition, ESP_IMAGE_VERIFY) != ESP_OK) {
        return ESP_ERR_OTA_VALIDATE_FAILED;
    }


    if (partition->type == ESP_PARTITION_TYPE_APP) {
        if (partition->subtype == ESP_PARTITION_SUBTYPE_APP_FACTORY) {
            const esp_partition_t *find_partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_OTA, ((void*)0));
            if (find_partition != ((void*)0)) {
                return esp_partition_erase_range(find_partition, 0, find_partition->size);
            } else {
                return ESP_ERR_NOT_FOUND;
            }
        } else {
            return esp_rewrite_ota_data(partition->subtype);
        }
    } else {
        return ESP_ERR_INVALID_ARG;
    }
}
