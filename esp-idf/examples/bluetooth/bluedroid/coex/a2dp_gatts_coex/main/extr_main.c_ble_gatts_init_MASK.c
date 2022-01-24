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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_BLE_COEX_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  PROFILE_A_APP_ID ; 
 int /*<<< orphan*/  PROFILE_B_APP_ID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gap_event_handler ; 
 int /*<<< orphan*/  gatts_event_handler ; 

__attribute__((used)) static void FUNC5(void)
{
    esp_err_t ret = FUNC4(gatts_event_handler);
    if (ret){
        FUNC0(BT_BLE_COEX_TAG, "gatts register error, error code = 0x%x", ret);
        return;
    }
    ret = FUNC1(gap_event_handler);
    if (ret){
        FUNC0(BT_BLE_COEX_TAG, "gap register error, error code = 0x%x", ret);
        return;
    }
    ret = FUNC3(PROFILE_A_APP_ID);
    if (ret){
        FUNC0(BT_BLE_COEX_TAG, "gatts app register error, error code = 0x%x", ret);
        return;
    }
    ret = FUNC3(PROFILE_B_APP_ID);
    if (ret){
        FUNC0(BT_BLE_COEX_TAG, "gatts app register error, error code = 0x%x", ret);
        return;
    }
    esp_err_t local_mtu_ret = FUNC2(500);
    if (local_mtu_ret){
        FUNC0(BT_BLE_COEX_TAG, "set local  MTU failed, error code = 0x%x", local_mtu_ret);
    }
}