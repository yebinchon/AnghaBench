
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_image_segment_header_t ;
typedef int esp_image_header_t ;
struct TYPE_2__ {scalar_t__ state; int binary_file_len; int * ota_upgrade_buf; int http_client; } ;
typedef TYPE_1__ esp_https_ota_t ;
typedef scalar_t__ esp_https_ota_handle_t ;
typedef int esp_err_t ;
typedef int esp_app_desc_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 scalar_t__ ESP_HTTPS_OTA_BEGIN ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int IMAGE_HEADER_SIZE ;
 int TAG ;
 int esp_http_client_read (int ,int *,int) ;
 int memcpy (int *,int *,int) ;

esp_err_t esp_https_ota_get_img_desc(esp_https_ota_handle_t https_ota_handle, esp_app_desc_t *new_app_info)
{
    esp_https_ota_t *handle = (esp_https_ota_t *)https_ota_handle;
    if (handle == ((void*)0) || new_app_info == ((void*)0)) {
        ESP_LOGE(TAG, "esp_https_ota_read_img_desc: Invalid argument");
        return ESP_ERR_INVALID_ARG;
    }
    if (handle->state < ESP_HTTPS_OTA_BEGIN) {
        ESP_LOGE(TAG, "esp_https_ota_read_img_desc: Invalid state");
        return ESP_FAIL;
    }
    int data_read_size = IMAGE_HEADER_SIZE;
    int data_read = esp_http_client_read(handle->http_client,
                                         handle->ota_upgrade_buf,
                                         data_read_size);
    if (data_read < 0) {
        return ESP_FAIL;
    }
    if (data_read >= sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t) + sizeof(esp_app_desc_t)) {
        memcpy(new_app_info, &handle->ota_upgrade_buf[sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t)], sizeof(esp_app_desc_t));
        handle->binary_file_len += data_read;
    } else {
        return ESP_FAIL;
    }
    return ESP_OK;
}
