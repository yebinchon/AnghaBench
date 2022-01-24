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
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_APP_FACTORY ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int boot_count ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
    boot_count = 5;
    FUNC0(TAG, "boot count %d", boot_count);
    const esp_partition_t *cur_app = FUNC5();
    FUNC0(TAG, "erase_last_app");
    FUNC1(ESP_PARTITION_SUBTYPE_APP_FACTORY, cur_app->subtype);
    FUNC2(ESP_FAIL, FUNC4());
    FUNC3();
}