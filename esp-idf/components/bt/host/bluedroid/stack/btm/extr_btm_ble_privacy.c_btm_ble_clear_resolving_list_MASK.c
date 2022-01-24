#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_2__ {scalar_t__ (* supports_ble_privacy ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_META_CLEAR_IRK_LEN ; 
 int /*<<< orphan*/  BTM_BLE_META_CLEAR_IRK_LIST ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_VENDOR_BLE_RPA_VSC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btm_ble_resolving_list_vsc_op_cmpl ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

tBTM_STATUS FUNC5(void)
{
    tBTM_STATUS st = BTM_NO_RESOURCES;

    if (FUNC3()->supports_ble_privacy()) {
        if (FUNC2()) {
            st =  BTM_SUCCESS;
        }
    } else {
        UINT8 param[20] = {0};
        UINT8 *p = param;

        FUNC1(p, BTM_BLE_META_CLEAR_IRK_LIST);
        st = FUNC0 (HCI_VENDOR_BLE_RPA_VSC,
                                        BTM_BLE_META_CLEAR_IRK_LEN,
                                        param,
                                        btm_ble_resolving_list_vsc_op_cmpl);
    }

    return st;
}