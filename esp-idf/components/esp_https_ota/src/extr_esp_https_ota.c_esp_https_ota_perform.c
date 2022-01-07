
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int binary_file_len; scalar_t__ ota_upgrade_buf; int ota_upgrade_buf_size; int http_client; int update_handle; int update_partition; } ;
typedef TYPE_1__ esp_https_ota_t ;
typedef scalar_t__ esp_https_ota_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;


 int ESP_HTTPS_OTA_SUCCESS ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int OTA_SIZE_UNKNOWN ;
 int TAG ;
 int _ota_write (TYPE_1__*,void const*,int) ;
 int esp_err_to_name (int ) ;
 int esp_http_client_read (int ,scalar_t__,int ) ;
 int esp_ota_begin (int ,int ,int *) ;

esp_err_t esp_https_ota_perform(esp_https_ota_handle_t https_ota_handle)
{
    esp_https_ota_t *handle = (esp_https_ota_t *)https_ota_handle;
    if (handle == ((void*)0)) {
        ESP_LOGE(TAG, "esp_https_ota_perform: Invalid argument");
        return ESP_ERR_INVALID_ARG;
    }
    if (handle->state < 129) {
        ESP_LOGE(TAG, "esp_https_ota_perform: Invalid state");
        return ESP_FAIL;
    }

    esp_err_t err;
    int data_read;
    switch (handle->state) {
        case 129:
            err = esp_ota_begin(handle->update_partition, OTA_SIZE_UNKNOWN, &handle->update_handle);
            if (err != ESP_OK) {
                ESP_LOGE(TAG, "esp_ota_begin failed (%s)", esp_err_to_name(err));
                return err;
            }
            handle->state = 128;



            if (handle->binary_file_len) {
                return _ota_write(handle, (const void *)handle->ota_upgrade_buf, handle->binary_file_len);
            }

        case 128:
            data_read = esp_http_client_read(handle->http_client,
                                             handle->ota_upgrade_buf,
                                             handle->ota_upgrade_buf_size);
            if (data_read == 0) {
                ESP_LOGI(TAG, "Connection closed");
            } else if (data_read < 0) {
                ESP_LOGE(TAG, "Error: SSL data read error");
                return ESP_FAIL;
            } else if (data_read > 0) {
                return _ota_write(handle, (const void *)handle->ota_upgrade_buf, data_read);
            }
            handle->state = ESP_HTTPS_OTA_SUCCESS;
            break;
         default:
            ESP_LOGE(TAG, "Invalid ESP HTTPS OTA State");
            return ESP_FAIL;
            break;
    }
    return ESP_OK;
}
