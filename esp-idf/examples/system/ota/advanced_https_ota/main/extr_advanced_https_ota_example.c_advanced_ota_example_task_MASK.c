#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * esp_https_ota_handle_t ;
struct TYPE_4__ {TYPE_2__* http_config; } ;
typedef  TYPE_1__ esp_https_ota_config_t ;
struct TYPE_5__ {char* cert_pem; int /*<<< orphan*/  url; } ;
typedef  TYPE_2__ esp_http_client_config_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  esp_app_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL ; 
 scalar_t__ ESP_ERR_HTTPS_OTA_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ server_cert_pem_start ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(void *pvParameter)
{
    FUNC2(TAG, "Starting Advanced OTA example");

    esp_err_t ota_finish_err = ESP_OK;
    esp_http_client_config_t config = {
        .url = CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL,
        .cert_pem = (char *)server_cert_pem_start,
    };

    esp_https_ota_config_t ota_config = {
        .http_config = &config,
    };

    esp_https_ota_handle_t https_ota_handle = NULL;
    esp_err_t err = FUNC3(&ota_config, &https_ota_handle);
    if (err != ESP_OK) {
        FUNC1(TAG, "ESP HTTPS OTA Begin failed");
        FUNC11(NULL);
    }

    esp_app_desc_t app_desc;
    err = FUNC6(https_ota_handle, &app_desc);
    if (err != ESP_OK) {
        FUNC1(TAG, "esp_https_ota_read_img_desc failed");
        goto ota_end;
    }
    err = FUNC12(&app_desc);
    if (err != ESP_OK) {
        FUNC1(TAG, "image header verification failed");
        goto ota_end;
    }

    while (1) {
        err = FUNC8(https_ota_handle);
        if (err != ESP_ERR_HTTPS_OTA_IN_PROGRESS) {
            break;
        }
        // esp_https_ota_perform returns after every read operation which gives user the ability to
        // monitor the status of OTA upgrade by calling esp_https_ota_get_image_len_read, which gives length of image
        // data read so far.
        FUNC0(TAG, "Image bytes read: %d", FUNC5(https_ota_handle));
    }

    if (FUNC7(https_ota_handle) != true) {
        // the OTA image was not completely received and user can customise the response to this situation.
        FUNC1(TAG, "Complete data was not received.");
    }

ota_end:
    ota_finish_err = FUNC4(https_ota_handle);
    if ((err == ESP_OK) && (ota_finish_err == ESP_OK)) {
        FUNC2(TAG, "ESP_HTTPS_OTA upgrade successful. Rebooting ...");
        FUNC10(1000 / portTICK_PERIOD_MS);
        FUNC9();
    } else {
        FUNC1(TAG, "ESP_HTTPS_OTA upgrade failed %d", ota_finish_err);
    }

    while (1) {
        FUNC10(1000 / portTICK_PERIOD_MS);
    }
}