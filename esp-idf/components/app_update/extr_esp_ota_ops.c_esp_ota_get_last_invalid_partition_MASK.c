#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_partition_t ;
struct TYPE_4__ {int ota_seq; } ;
typedef  TYPE_1__ esp_ota_select_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_IMAGE_VERIFY_SILENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MIN ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_APP ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 

const esp_partition_t* FUNC6(void)
{
    esp_ota_select_entry_t otadata[2];
    if (FUNC5(otadata) == NULL) {
        return NULL;
    }

    int invalid_otadata = FUNC2(otadata);

    int ota_app_count = FUNC3();
    if (invalid_otadata != -1 && ota_app_count != 0) {
        int ota_slot = (otadata[invalid_otadata].ota_seq - 1) % ota_app_count;
        FUNC0(TAG, "Find invalid ota_%d app", ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot);

        const esp_partition_t* invalid_partition = FUNC1(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot, NULL);
        if (invalid_partition != NULL) {
            if (FUNC4(invalid_partition, ESP_IMAGE_VERIFY_SILENT) != ESP_OK) {
                FUNC0(TAG, "Last invalid partition has corrupted app");
                return NULL;
            }
        }
        return invalid_partition;
    }
    return NULL;
}