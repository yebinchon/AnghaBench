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
typedef  int /*<<< orphan*/  esp_partition_t ;
typedef  scalar_t__ esp_partition_subtype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_FACTORY ; 
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MAX ; 
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MIN ; 
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_TEST ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_APP ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const esp_partition_t *FUNC2(void)
{
    // This logic matches the logic of bootloader get_selected_boot_partition() & load_boot_image().

    // Default to factory if present
    const esp_partition_t *result = FUNC1(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_FACTORY, NULL);
    if (result != NULL) {
        return result;
    }

    // Try first OTA slot if no factory partition
    for (esp_partition_subtype_t s = ESP_PARTITION_SUBTYPE_APP_OTA_MIN; s != ESP_PARTITION_SUBTYPE_APP_OTA_MAX; s++) {
        result = FUNC1(ESP_PARTITION_TYPE_APP, s, NULL);
        if (result != NULL) {
            return result;
        }
    }

    // Test app slot if present
    result = FUNC1(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_TEST, NULL);
    if (result != NULL) {
        return result;
    }

    FUNC0(TAG, "invalid partition table, no app partitions");
    return NULL;
}