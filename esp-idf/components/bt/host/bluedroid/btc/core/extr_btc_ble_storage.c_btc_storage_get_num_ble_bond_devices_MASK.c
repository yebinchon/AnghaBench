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
typedef  int /*<<< orphan*/  btc_config_section_iter_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_BLE_STORAGE_DEV_TYPE_STR ; 
 int BT_DEVICE_TYPE_BLE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

int FUNC8(void)
{
    int num_dev = 0;
    uint32_t device_type = 0;

    FUNC1();
    for (const btc_config_section_iter_t *iter = FUNC2(); iter != FUNC3();
            iter = FUNC5(iter)) {
        const char *name = FUNC4(iter);
        if (!FUNC7(name) ||
                !FUNC0(name, BTC_BLE_STORAGE_DEV_TYPE_STR, (int *)&device_type) ||
                !(device_type & BT_DEVICE_TYPE_BLE)) {
            continue;
        }

        num_dev++;
    }
    FUNC6();

    return num_dev;
}