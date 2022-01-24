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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  btc_config_section_iter_t ;
struct TYPE_3__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ bt_bdaddr_t ;

/* Variables and functions */
 scalar_t__ BONED_DEVICES_MAX_COUNT ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_ADDR_TYPE_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_DEV_TYPE_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_LE_KEY_LCSRK_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_LE_KEY_LENC_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_LE_KEY_PCSRK_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_LE_KEY_PENC_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_LE_KEY_PID_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_LINK_KEY_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BT_DEVICE_TYPE_BLE ; 
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  const* FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(void)
{
    uint16_t addr_section_count = 0;
    bt_bdaddr_t bd_addr;
    uint32_t device_type = 0;
    const btc_config_section_iter_t *need_remove_iter = NULL;
    const btc_config_section_iter_t *iter = FUNC6();

    while (iter != FUNC7()) {
        //store the next iter, if remove section, then will not loss the point

        const char *section = FUNC8(iter);

        if (FUNC10(section) &&
                !FUNC2(section, BTC_BLE_STORAGE_DEV_TYPE_STR) &&
                !FUNC2(section, BTC_BLE_STORAGE_ADDR_TYPE_STR) &&
                !FUNC2(section, BTC_BLE_STORAGE_LINK_KEY_STR) &&
                !FUNC2(section, BTC_BLE_STORAGE_LE_KEY_PENC_STR) &&
                !FUNC2(section, BTC_BLE_STORAGE_LE_KEY_PID_STR) &&
                !FUNC2(section, BTC_BLE_STORAGE_LE_KEY_PCSRK_STR) &&
                !FUNC2(section, BTC_BLE_STORAGE_LE_KEY_LENC_STR) &&
                !FUNC2(section, BTC_BLE_STORAGE_LE_KEY_LCSRK_STR)) {
            iter = FUNC9(iter);
            FUNC5(section);
            continue;
        }

        if (!FUNC10(section) ||
            !FUNC4(section, BTC_BLE_STORAGE_DEV_TYPE_STR, (int *)&device_type) ||
            ((device_type & BT_DEVICE_TYPE_BLE) != BT_DEVICE_TYPE_BLE)) {
            iter = FUNC9(iter);
            continue;
        }

        if(addr_section_count == BONED_DEVICES_MAX_COUNT) {
            need_remove_iter = iter;
        }
        addr_section_count ++;
        iter = FUNC9(iter);
    }
    /*exceeded the maximum nubmer of bonded devices, delete them */
    if (need_remove_iter) {
        while(need_remove_iter != FUNC7()) {
            const char *need_remove_section = FUNC8(need_remove_iter);
            if (!FUNC10(need_remove_section) ||
                !FUNC4(need_remove_section, BTC_BLE_STORAGE_DEV_TYPE_STR, (int *)&device_type) ||
                ((device_type & BT_DEVICE_TYPE_BLE) != BT_DEVICE_TYPE_BLE)) {
                need_remove_iter = FUNC9(need_remove_iter);
                continue;
            }
            need_remove_iter = FUNC9(need_remove_iter);
            //delete device info
            FUNC11(need_remove_section, &bd_addr);
            FUNC1(bd_addr.address, BT_TRANSPORT_LE);
            //delet config info
            if(FUNC5(need_remove_section)) {
                FUNC0("exceeded the maximum nubmer of bonded devices, delete the last device info : %s", need_remove_section);
            }
        }
    }
    FUNC3();
}