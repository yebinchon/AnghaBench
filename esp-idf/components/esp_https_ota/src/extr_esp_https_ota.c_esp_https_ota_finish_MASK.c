#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int state; int /*<<< orphan*/  update_partition; int /*<<< orphan*/  http_client; struct TYPE_3__* ota_upgrade_buf; int /*<<< orphan*/  update_handle; } ;
typedef  TYPE_1__ esp_https_ota_t ;
typedef  scalar_t__ esp_https_ota_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_FAIL ; 
#define  ESP_HTTPS_OTA_BEGIN 130 
#define  ESP_HTTPS_OTA_IN_PROGRESS 129 
#define  ESP_HTTPS_OTA_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

esp_err_t FUNC5(esp_https_ota_handle_t https_ota_handle)
{
    esp_https_ota_t *handle = (esp_https_ota_t *)https_ota_handle;
    if (handle == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    if (handle->state < ESP_HTTPS_OTA_BEGIN) {
        return ESP_FAIL;
    }

    esp_err_t err = ESP_OK;
    switch (handle->state) {
        case ESP_HTTPS_OTA_SUCCESS:
        case ESP_HTTPS_OTA_IN_PROGRESS:
            err = FUNC2(handle->update_handle);
            /* falls through */
        case ESP_HTTPS_OTA_BEGIN:
            if (handle->ota_upgrade_buf) {
                FUNC4(handle->ota_upgrade_buf);
            }
            if (handle->http_client) {
                FUNC1(handle->http_client);
            }
            break;
        default:
            FUNC0(TAG, "Invalid ESP HTTPS OTA State");
            break;
    }

    if ((err == ESP_OK) && (handle->state == ESP_HTTPS_OTA_SUCCESS)) {
        esp_err_t err = FUNC3(handle->update_partition);
        if (err != ESP_OK) {
            FUNC0(TAG, "esp_ota_set_boot_partition failed! err=0x%d", err);
        }
    }
    FUNC4(handle);
    return err;
}