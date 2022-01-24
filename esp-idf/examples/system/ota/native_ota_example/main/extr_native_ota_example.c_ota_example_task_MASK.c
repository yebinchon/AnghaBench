#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  address; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_ota_handle_t ;
typedef  int /*<<< orphan*/  esp_image_segment_header_t ;
typedef  int /*<<< orphan*/  esp_image_header_t ;
typedef  int /*<<< orphan*/ * esp_http_client_handle_t ;
struct TYPE_15__ {char* cert_pem; int /*<<< orphan*/  url; } ;
typedef  TYPE_2__ esp_http_client_config_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_16__ {int /*<<< orphan*/  version; } ;
typedef  TYPE_3__ esp_app_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFSIZE ; 
 int /*<<< orphan*/  CONFIG_EXAMPLE_FIRMWARE_UPG_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  OTA_SIZE_UNKNOWN ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 () ; 
 TYPE_1__* FUNC15 () ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_1__ const*,TYPE_3__*) ; 
 TYPE_1__* FUNC18 () ; 
 scalar_t__ FUNC19 (TYPE_1__ const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ota_write_data ; 
 scalar_t__ server_cert_pem_start ; 
 int /*<<< orphan*/  FUNC26 () ; 

__attribute__((used)) static void FUNC27(void *pvParameter)
{
    esp_err_t err;
    /* update handle : set by esp_ota_begin(), must be freed via esp_ota_end() */
    esp_ota_handle_t update_handle = 0 ;
    const esp_partition_t *update_partition = NULL;

    FUNC2(TAG, "Starting OTA example");

    const esp_partition_t *configured = FUNC14();
    const esp_partition_t *running = FUNC18();

    if (configured != running) {
        FUNC3(TAG, "Configured OTA boot partition at offset 0x%08x, but running from offset 0x%08x",
                 configured->address, running->address);
        FUNC3(TAG, "(This can happen if either the OTA boot data or preferred boot image become corrupted somehow.)");
    }
    FUNC2(TAG, "Running partition type %d subtype %d (offset 0x%08x)",
             running->type, running->subtype, running->address);

    esp_http_client_config_t config = {
        .url = CONFIG_EXAMPLE_FIRMWARE_UPG_URL,
        .cert_pem = (char *)server_cert_pem_start,
    };
    esp_http_client_handle_t client = FUNC8(&config);
    if (client == NULL) {
        FUNC1(TAG, "Failed to initialise HTTP connection");
        FUNC26();
    }
    err = FUNC10(client, 0);
    if (err != ESP_OK) {
        FUNC1(TAG, "Failed to open HTTP connection: %s", FUNC5(err));
        FUNC6(client);
        FUNC26();
    }
    FUNC7(client);

    update_partition = FUNC16(NULL);
    FUNC2(TAG, "Writing to partition subtype %d at offset 0x%x",
             update_partition->subtype, update_partition->address);
    FUNC4(update_partition != NULL);

    int binary_file_length = 0;
    /*deal with all receive packet*/
    bool image_header_was_checked = false;
    while (1) {
        int data_read = FUNC11(client, ota_write_data, BUFFSIZE);
        if (data_read < 0) {
            FUNC1(TAG, "Error: SSL data read error");
            FUNC22(client);
            FUNC26();
        } else if (data_read > 0) {
            if (image_header_was_checked == false) {
                esp_app_desc_t new_app_info;
                if (data_read > sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t) + sizeof(esp_app_desc_t)) {
                    // check current version with downloading
                    FUNC25(&new_app_info, &ota_write_data[sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t)], sizeof(esp_app_desc_t));
                    FUNC2(TAG, "New firmware version: %s", new_app_info.version);

                    esp_app_desc_t running_app_info;
                    if (FUNC17(running, &running_app_info) == ESP_OK) {
                        FUNC2(TAG, "Running firmware version: %s", running_app_info.version);
                    }

                    const esp_partition_t* last_invalid_app = FUNC15();
                    esp_app_desc_t invalid_app_info;
                    if (FUNC17(last_invalid_app, &invalid_app_info) == ESP_OK) {
                        FUNC2(TAG, "Last invalid firmware version: %s", invalid_app_info.version);
                    }

                    // check current version with last invalid partition
                    if (last_invalid_app != NULL) {
                        if (FUNC24(invalid_app_info.version, new_app_info.version, sizeof(new_app_info.version)) == 0) {
                            FUNC3(TAG, "New version is the same as invalid version.");
                            FUNC3(TAG, "Previously, there was an attempt to launch the firmware with %s version, but it failed.", invalid_app_info.version);
                            FUNC3(TAG, "The firmware has been rolled back to the previous version.");
                            FUNC22(client);
                            FUNC23();
                        }
                    }

                    if (FUNC24(new_app_info.version, running_app_info.version, sizeof(new_app_info.version)) == 0) {
                        FUNC3(TAG, "Current running version is the same as a new. We will not continue the update.");
                        FUNC22(client);
                        FUNC23();
                    }

                    image_header_was_checked = true;

                    err = FUNC12(update_partition, OTA_SIZE_UNKNOWN, &update_handle);
                    if (err != ESP_OK) {
                        FUNC1(TAG, "esp_ota_begin failed (%s)", FUNC5(err));
                        FUNC22(client);
                        FUNC26();
                    }
                    FUNC2(TAG, "esp_ota_begin succeeded");
                } else {
                    FUNC1(TAG, "received package is not fit len");
                    FUNC22(client);
                    FUNC26();
                }
            }
            err = FUNC20( update_handle, (const void *)ota_write_data, data_read);
            if (err != ESP_OK) {
                FUNC22(client);
                FUNC26();
            }
            binary_file_length += data_read;
            FUNC0(TAG, "Written image length %d", binary_file_length);
        } else if (data_read == 0) {
            FUNC2(TAG, "Connection closed");
            break;
        }
    }
    FUNC2(TAG, "Total Write binary data length: %d", binary_file_length);
    if (FUNC9(client) != true) {
        FUNC1(TAG, "Error in receiving complete file");
        FUNC22(client);
        FUNC26();
    }

    err = FUNC13(update_handle);
    if (err != ESP_OK) {
        FUNC1(TAG, "esp_ota_end failed (%s)!", FUNC5(err));
        FUNC22(client);
        FUNC26();
    }

    err = FUNC19(update_partition);
    if (err != ESP_OK) {
        FUNC1(TAG, "esp_ota_set_boot_partition failed (%s)!", FUNC5(err));
        FUNC22(client);
        FUNC26();
    }
    FUNC2(TAG, "Prepare to restart system!");
    FUNC21();
    return ;
}