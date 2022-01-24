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
struct TYPE_5__ {int subtype; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int esp_ota_img_states_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OTA_IMG_NEW ; 
 int /*<<< orphan*/  ESP_OTA_IMG_PENDING_VERIFY ; 
 int /*<<< orphan*/  ESP_OTA_IMG_UNDEFINED ; 
 int /*<<< orphan*/  ESP_OTA_IMG_VALID ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_FACTORY ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_OTA_0 ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_OTA_1 ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 () ; 
 int boot_count ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(void)
{
    boot_count++;
    FUNC0(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = FUNC12();
    esp_ota_img_states_t ota_state = 0x5555AAAA;
    const esp_partition_t* update_partition = NULL;
    switch (boot_count) {
        case 2:
            FUNC0(TAG, "Factory");
            FUNC1(ESP_PARTITION_SUBTYPE_APP_FACTORY, cur_app->subtype);
            FUNC2(FUNC8());
            FUNC3(ESP_ERR_NOT_SUPPORTED, FUNC9(cur_app, &ota_state));
            update_partition = FUNC6();
            FUNC4(FUNC9(update_partition, &ota_state));
#ifndef CONFIG_BOOTLOADER_APP_ROLLBACK_ENABLE
            FUNC1(ESP_OTA_IMG_UNDEFINED, ota_state);
#else
            TEST_ASSERT_EQUAL(ESP_OTA_IMG_NEW, ota_state);
#endif
            FUNC13();
            break;
        case 3:
            FUNC0(TAG, "OTA0");
            FUNC1(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);
            FUNC2(FUNC8());
            FUNC4(FUNC9(cur_app, &ota_state));
#ifndef CONFIG_BOOTLOADER_APP_ROLLBACK_ENABLE
            FUNC1(ESP_OTA_IMG_UNDEFINED, ota_state);
#else
            TEST_ASSERT_EQUAL(ESP_OTA_IMG_PENDING_VERIFY, ota_state);
#endif
            FUNC4(FUNC11());
            FUNC2(FUNC8());
            FUNC4(FUNC9(cur_app, &ota_state));
            FUNC1(ESP_OTA_IMG_VALID, ota_state);
            update_partition = FUNC6();
            FUNC4(FUNC9(update_partition, &ota_state));
#ifndef CONFIG_BOOTLOADER_APP_ROLLBACK_ENABLE
            FUNC1(ESP_OTA_IMG_UNDEFINED, ota_state);
#else
            TEST_ASSERT_EQUAL(ESP_OTA_IMG_NEW, ota_state);
#endif
            FUNC13();
            break;
        case 4:
            FUNC0(TAG, "OTA1");
            FUNC1(ESP_PARTITION_SUBTYPE_APP_OTA_1, cur_app->subtype);
            FUNC2(FUNC8());
            FUNC4(FUNC9(cur_app, &ota_state));
#ifndef CONFIG_BOOTLOADER_APP_ROLLBACK_ENABLE
            FUNC1(ESP_OTA_IMG_UNDEFINED, ota_state);
            FUNC4(FUNC10());
#else
            TEST_ASSERT_EQUAL(ESP_OTA_IMG_PENDING_VERIFY, ota_state);
            reboot_as_deep_sleep();
#endif
            break;
        default:
            FUNC7();
            FUNC5("Unexpected stage");
            break;
    }
}