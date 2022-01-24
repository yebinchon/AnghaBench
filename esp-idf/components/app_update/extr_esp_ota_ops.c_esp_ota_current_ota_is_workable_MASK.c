#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_partition_t ;
struct TYPE_5__ {scalar_t__ ota_state; int /*<<< orphan*/  ota_seq; } ;
typedef  TYPE_1__ esp_ota_select_entry_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NOT_FOUND ; 
 scalar_t__ ESP_ERR_OTA_ROLLBACK_FAILED ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ ESP_OTA_IMG_INVALID ; 
 scalar_t__ ESP_OTA_IMG_VALID ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static esp_err_t FUNC10(bool valid)
{
    esp_ota_select_entry_t otadata[2];
    const esp_partition_t *otadata_partition = FUNC8(otadata);
    if (otadata_partition == NULL) {
        return ESP_ERR_NOT_FOUND;
    }

    int active_otadata = FUNC3(otadata);
    if (active_otadata != -1 && FUNC7() != 0) {
        if (valid == true && otadata[active_otadata].ota_state != ESP_OTA_IMG_VALID) {
            otadata[active_otadata].ota_state = ESP_OTA_IMG_VALID;
            FUNC0(TAG, "OTA[current] partition is marked as VALID");
            esp_err_t err = FUNC9(otadata, otadata[active_otadata].ota_seq, active_otadata, otadata_partition);
#ifdef CONFIG_BOOTLOADER_APP_ANTI_ROLLBACK
            if (err == ESP_OK) {
                return esp_ota_set_anti_rollback();
            }
#endif
            return err;
        } else if (valid == false) {
            if (FUNC4() == false) {
                FUNC1(TAG, "Rollback is not possible, do not have any suitable apps in slots");
                return ESP_ERR_OTA_ROLLBACK_FAILED;
            }
            FUNC0(TAG, "OTA[current] partition is marked as INVALID");
            otadata[active_otadata].ota_state = ESP_OTA_IMG_INVALID;
            esp_err_t err = FUNC9(otadata, otadata[active_otadata].ota_seq, active_otadata, otadata_partition);
            if (err != ESP_OK) {
                return err;
            }
            FUNC2(TAG, "Rollback to previously worked partition. Restart.");
            FUNC6();
        }
    } else {
        FUNC1(TAG, "Running firmware is factory");
        return ESP_FAIL;
    }
    return ESP_OK;
}