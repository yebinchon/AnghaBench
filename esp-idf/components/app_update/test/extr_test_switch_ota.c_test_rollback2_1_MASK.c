#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int subtype; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int esp_ota_img_states_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OTA_IMG_ABORTED ; 
 int /*<<< orphan*/  ESP_OTA_IMG_INVALID ; 
 int /*<<< orphan*/  ESP_OTA_IMG_VALID ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_OTA_0 ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_OTA_1 ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int boot_count ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,int*) ; 
 TYPE_1__* FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
    boot_count = 5;
    esp_ota_img_states_t ota_state = 0x5555AAAA;
    FUNC0(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = FUNC9();
    FUNC0(TAG, "OTA0");
    FUNC1(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);

    const esp_partition_t *invalid_partition = FUNC6();
    FUNC1(ESP_PARTITION_SUBTYPE_APP_OTA_1, invalid_partition->subtype);
    const esp_partition_t* next_update_partition = FUNC7(NULL);
    FUNC3(invalid_partition);
    FUNC3(next_update_partition);
    FUNC2(invalid_partition, next_update_partition);
    FUNC4(FUNC8(cur_app, &ota_state));
    FUNC1(ESP_OTA_IMG_VALID, ota_state);
    FUNC4(FUNC8(invalid_partition, &ota_state));
#ifndef CONFIG_BOOTLOADER_APP_ROLLBACK_ENABLE
    FUNC1(ESP_OTA_IMG_INVALID, ota_state);
#else
    TEST_ASSERT_EQUAL(ESP_OTA_IMG_ABORTED, ota_state);
#endif
    FUNC5();
}