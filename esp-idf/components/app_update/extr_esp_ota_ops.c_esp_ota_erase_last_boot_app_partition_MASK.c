#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int size; } ;
typedef  TYPE_1__ esp_partition_t ;
struct TYPE_11__ {int ota_seq; scalar_t__ crc; } ;
typedef  TYPE_2__ esp_ota_select_entry_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MIN ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_APP ; 
 int SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int UINT32_MAX ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__ const*,int,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 

esp_err_t FUNC8(void)
{
    esp_ota_select_entry_t otadata[2];
    const esp_partition_t* ota_data_partition = FUNC7(otadata);
    if (ota_data_partition == NULL) {
        return ESP_FAIL;
    }

    int active_otadata = FUNC1(otadata);
    int ota_app_count = FUNC6();
    if (active_otadata == -1 || ota_app_count == 0) {
        return ESP_FAIL;
    }

    int inactive_otadata = (~active_otadata)&1;
    if (otadata[inactive_otadata].ota_seq == UINT32_MAX || otadata[inactive_otadata].crc != FUNC2(&otadata[inactive_otadata])) {
        return ESP_FAIL;
    }

    int ota_slot = (otadata[inactive_otadata].ota_seq - 1) % ota_app_count; // Actual OTA partition selection
    FUNC0(TAG, "finding last_boot_app_partition ota_%d app...", ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot);

    const esp_partition_t* last_boot_app_partition_from_otadata = FUNC5(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot, NULL);
    if (last_boot_app_partition_from_otadata == NULL) {
        return ESP_FAIL;
    }

    const esp_partition_t* running_partition = FUNC3();
    if (running_partition == NULL || last_boot_app_partition_from_otadata == running_partition) {
        return ESP_FAIL;
    }

    esp_err_t err = FUNC4(last_boot_app_partition_from_otadata, 0, last_boot_app_partition_from_otadata->size);
    if (err != ESP_OK) {
        return err;
    }

    int sec_id = inactive_otadata;
    err = FUNC4(ota_data_partition, sec_id * SPI_FLASH_SEC_SIZE, SPI_FLASH_SEC_SIZE);
    if (err != ESP_OK) {
        return err;
    }

    return ESP_OK;
}