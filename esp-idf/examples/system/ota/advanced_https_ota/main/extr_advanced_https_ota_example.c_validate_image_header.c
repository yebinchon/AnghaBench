
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_partition_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {int version; } ;
typedef TYPE_1__ esp_app_desc_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGI (int ,char*,int ) ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ esp_ota_get_partition_description (int const*,TYPE_1__*) ;
 int * esp_ota_get_running_partition () ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static esp_err_t validate_image_header(esp_app_desc_t *new_app_info)
{
    if (new_app_info == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    const esp_partition_t *running = esp_ota_get_running_partition();
    esp_app_desc_t running_app_info;
    if (esp_ota_get_partition_description(running, &running_app_info) == ESP_OK) {
        ESP_LOGI(TAG, "Running firmware version: %s", running_app_info.version);
    }

    if (memcmp(new_app_info->version, running_app_info.version, sizeof(new_app_info->version)) == 0) {
        ESP_LOGW(TAG, "Current running version is the same as a new. We will not continue the update.");
        return ESP_FAIL;
    }
    return ESP_OK;
}
