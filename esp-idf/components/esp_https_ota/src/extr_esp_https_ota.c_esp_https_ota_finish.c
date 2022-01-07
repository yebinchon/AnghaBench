
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int update_partition; int http_client; struct TYPE_3__* ota_upgrade_buf; int update_handle; } ;
typedef TYPE_1__ esp_https_ota_t ;
typedef scalar_t__ esp_https_ota_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_FAIL ;



 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int _http_cleanup (int ) ;
 scalar_t__ esp_ota_end (int ) ;
 scalar_t__ esp_ota_set_boot_partition (int ) ;
 int free (TYPE_1__*) ;

esp_err_t esp_https_ota_finish(esp_https_ota_handle_t https_ota_handle)
{
    esp_https_ota_t *handle = (esp_https_ota_t *)https_ota_handle;
    if (handle == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (handle->state < 130) {
        return ESP_FAIL;
    }

    esp_err_t err = ESP_OK;
    switch (handle->state) {
        case 128:
        case 129:
            err = esp_ota_end(handle->update_handle);

        case 130:
            if (handle->ota_upgrade_buf) {
                free(handle->ota_upgrade_buf);
            }
            if (handle->http_client) {
                _http_cleanup(handle->http_client);
            }
            break;
        default:
            ESP_LOGE(TAG, "Invalid ESP HTTPS OTA State");
            break;
    }

    if ((err == ESP_OK) && (handle->state == 128)) {
        esp_err_t err = esp_ota_set_boot_partition(handle->update_partition);
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "esp_ota_set_boot_partition failed! err=0x%d", err);
        }
    }
    free(handle);
    return err;
}
