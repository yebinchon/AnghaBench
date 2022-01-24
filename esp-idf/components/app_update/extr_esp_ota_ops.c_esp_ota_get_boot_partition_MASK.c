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
struct TYPE_5__ {int ota_seq; } ;
typedef  TYPE_1__ esp_ota_select_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ESP_PARTITION_SUBTYPE_APP_OTA_MIN ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_APP ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 

const esp_partition_t *FUNC8(void)
{
    esp_ota_select_entry_t otadata[2];
    const esp_partition_t *otadata_partition = FUNC7(otadata);
    if (otadata_partition == NULL) {
        return NULL;
    }

    int ota_app_count = FUNC6();
    FUNC0(TAG, "found ota app max = %d", ota_app_count);

    if ((FUNC3(&otadata[0]) &&
         FUNC3(&otadata[1])) ||
         ota_app_count == 0) {
        FUNC0(TAG, "finding factory app...");
        return FUNC5();
    } else {
        int active_otadata = FUNC2(otadata);
        if (active_otadata != -1) {
            int ota_slot = (otadata[active_otadata].ota_seq - 1) % ota_app_count; // Actual OTA partition selection
            FUNC0(TAG, "finding ota_%d app...", ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot);
            return FUNC4(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot, NULL);
        } else {
            FUNC1(TAG, "ota data invalid, no current app. Assuming factory");
            return FUNC5();
        }
    }
}