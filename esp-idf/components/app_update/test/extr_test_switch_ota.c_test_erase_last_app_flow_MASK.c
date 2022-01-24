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
struct TYPE_3__ {int /*<<< orphan*/  subtype; } ;
typedef  TYPE_1__ esp_partition_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_FACTORY ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_OTA_0 ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_OTA_1 ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int boot_count ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void)
{
    boot_count++;
    FUNC0(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = FUNC8();
    switch (boot_count) {
        case 2:
            FUNC0(TAG, "Factory");
            FUNC1(ESP_PARTITION_SUBTYPE_APP_FACTORY, cur_app->subtype);
            FUNC4();
            FUNC10();
            break;
        case 3:
            FUNC0(TAG, "OTA0");
            FUNC1(ESP_PARTITION_SUBTYPE_APP_OTA_0, cur_app->subtype);
            FUNC9();
            FUNC4();
            FUNC10();
            break;
        case 4:
            FUNC0(TAG, "OTA1");
            FUNC1(ESP_PARTITION_SUBTYPE_APP_OTA_1, cur_app->subtype);
            FUNC2(FUNC6());
            FUNC2(FUNC7());
            FUNC10();
            break;
        default:
            FUNC5();
            FUNC3("Unexpected stage");
            break;
    }
}