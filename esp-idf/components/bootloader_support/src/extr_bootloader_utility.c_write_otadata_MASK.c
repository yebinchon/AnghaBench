#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  esp_ota_select_entry_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 int FLASH_SECTOR_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static esp_err_t FUNC3(esp_ota_select_entry_t *otadata, uint32_t offset, bool write_encrypted)
{
    esp_err_t err = FUNC1(offset / FLASH_SECTOR_SIZE);
    if (err == ESP_OK) {
        err = FUNC2(offset, otadata, sizeof(esp_ota_select_entry_t), write_encrypted);
    }
    if (err != ESP_OK) {
        FUNC0(TAG, "Error in write_otadata operation. err = 0x%x", err);
    }
    return err;
}