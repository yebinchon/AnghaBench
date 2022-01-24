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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  bt_status_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;
typedef  int /*<<< orphan*/  bdstr_t ;
typedef  int /*<<< orphan*/  bdstr ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_BLE_STORAGE_LE_AUTH_MODE_STR ; 
 int /*<<< orphan*/  BT_STATUS_FAIL ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bt_status_t FUNC4(bt_bdaddr_t *remote_bd_addr, bool flush)
{
    bool ret = true;
    bdstr_t bdstr;
    uint32_t auth_mode = 0;

    FUNC1(remote_bd_addr, bdstr, sizeof(bdstr));

    ret = FUNC2(bdstr, BTC_BLE_STORAGE_LE_AUTH_MODE_STR, (int *)&auth_mode);
    if (ret == false) {
        //cannot find the key, just return SUCCESS, indicate already removed
        return BT_STATUS_SUCCESS;
    }

    ret = FUNC3(bdstr, BTC_BLE_STORAGE_LE_AUTH_MODE_STR);
    if (ret == false) {
        return BT_STATUS_FAIL;
    }

    if (flush) {
        FUNC0();
    }

    return  BT_STATUS_SUCCESS;
}