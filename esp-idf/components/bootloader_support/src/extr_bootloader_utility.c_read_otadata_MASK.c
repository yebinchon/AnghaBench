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
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_3__ {int offset; int size; } ;
typedef  TYPE_1__ esp_partition_pos_t ;
typedef  int /*<<< orphan*/  esp_ota_select_entry_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int SPI_SEC_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static esp_err_t FUNC5(const esp_partition_pos_t *ota_info, esp_ota_select_entry_t *two_otadata)
{
    const esp_ota_select_entry_t *ota_select_map;
    if (ota_info->offset == 0) {
        return ESP_ERR_NOT_FOUND;
    }

    // partition table has OTA data partition
    if (ota_info->size < 2 * SPI_SEC_SIZE) {
        FUNC1(TAG, "ota_info partition size %d is too small (minimum %d bytes)", ota_info->size, sizeof(esp_ota_select_entry_t));
        return ESP_FAIL; // can't proceed
    }

    FUNC0(TAG, "OTA data offset 0x%x", ota_info->offset);
    ota_select_map = FUNC2(ota_info->offset, ota_info->size);
    if (!ota_select_map) {
        FUNC1(TAG, "bootloader_mmap(0x%x, 0x%x) failed", ota_info->offset, ota_info->size);
        return ESP_FAIL; // can't proceed
    }

    FUNC4(&two_otadata[0], ota_select_map, sizeof(esp_ota_select_entry_t));
    FUNC4(&two_otadata[1], (uint8_t *)ota_select_map + SPI_SEC_SIZE, sizeof(esp_ota_select_entry_t));
    FUNC3(ota_select_map);

    return ESP_OK;
}