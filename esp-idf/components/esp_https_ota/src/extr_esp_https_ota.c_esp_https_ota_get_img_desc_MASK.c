#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_image_segment_header_t ;
typedef  int /*<<< orphan*/  esp_image_header_t ;
struct TYPE_2__ {scalar_t__ state; int binary_file_len; int /*<<< orphan*/ * ota_upgrade_buf; int /*<<< orphan*/  http_client; } ;
typedef  TYPE_1__ esp_https_ota_t ;
typedef  scalar_t__ esp_https_ota_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  esp_app_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 scalar_t__ ESP_HTTPS_OTA_BEGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int IMAGE_HEADER_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

esp_err_t FUNC3(esp_https_ota_handle_t https_ota_handle, esp_app_desc_t *new_app_info)
{
    esp_https_ota_t *handle = (esp_https_ota_t *)https_ota_handle;
    if (handle == NULL || new_app_info == NULL)  {
        FUNC0(TAG, "esp_https_ota_read_img_desc: Invalid argument");
        return ESP_ERR_INVALID_ARG;
    }
    if (handle->state < ESP_HTTPS_OTA_BEGIN) {
        FUNC0(TAG, "esp_https_ota_read_img_desc: Invalid state");
        return ESP_FAIL;
    }
    int data_read_size = IMAGE_HEADER_SIZE;
    int data_read = FUNC1(handle->http_client,
                                         handle->ota_upgrade_buf,
                                         data_read_size);
    if (data_read < 0) {
        return ESP_FAIL;
    }
    if (data_read >= sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t) + sizeof(esp_app_desc_t)) {
        FUNC2(new_app_info, &handle->ota_upgrade_buf[sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t)], sizeof(esp_app_desc_t));
        handle->binary_file_len += data_read;
    } else {
        return ESP_FAIL;
    }
    return ESP_OK;                                
}