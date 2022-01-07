
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t binary_file_len; int update_handle; } ;
typedef TYPE_1__ esp_https_ota_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_HTTPS_OTA_IN_PROGRESS ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*,size_t) ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ esp_ota_write (int ,void const*,size_t) ;

__attribute__((used)) static esp_err_t _ota_write(esp_https_ota_t *https_ota_handle, const void *buffer, size_t buf_len)
{
    if (buffer == ((void*)0) || https_ota_handle == ((void*)0)) {
        return ESP_FAIL;
    }
    esp_err_t err = esp_ota_write(https_ota_handle->update_handle, buffer, buf_len);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error: esp_ota_write failed! err=0x%d", err);
    } else {
        https_ota_handle->binary_file_len += buf_len;
        ESP_LOGD(TAG, "Written image length %d", https_ota_handle->binary_file_len);
        err = ESP_ERR_HTTPS_OTA_IN_PROGRESS;
    }
    return err;
}
