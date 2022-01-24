#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {int /*<<< orphan*/  static_addr; int /*<<< orphan*/  static_addr_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  bd_addr; TYPE_1__ ble; } ;
typedef  TYPE_2__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_7__ {scalar_t__ (* get_ble_resolving_list_max_size ) () ;scalar_t__ (* supports_ble_privacy ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTM_BLE_META_REMOVE_IRK_ENTRY ; 
 int /*<<< orphan*/  BTM_BLE_META_REMOVE_IRK_LEN ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ BTM_WRONG_MODE ; 
 int /*<<< orphan*/  HCI_VENDOR_BLE_RPA_VSC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btm_ble_resolving_list_vsc_op_cmpl ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

tBTM_STATUS FUNC8(tBTM_SEC_DEV_REC *p_dev_rec)
{
    /* if controller does not support RPA offloading or privacy 1.2, skip */
    if (FUNC5()->get_ble_resolving_list_max_size() == 0) {
        return BTM_WRONG_MODE;
    }

    tBTM_STATUS st = BTM_NO_RESOURCES;
    if (FUNC5()->supports_ble_privacy()) {
        if (FUNC4(p_dev_rec->ble.static_addr_type,
                p_dev_rec->ble.static_addr)) {
            st =  BTM_CMD_STARTED;
        }
    } else {
        UINT8 param[20] = {0};
        UINT8 *p = param;

        FUNC2(p, BTM_BLE_META_REMOVE_IRK_ENTRY);
        FUNC2(p, p_dev_rec->ble.static_addr_type);
        FUNC0(p, p_dev_rec->ble.static_addr);

        st = FUNC1(HCI_VENDOR_BLE_RPA_VSC,
                                       BTM_BLE_META_REMOVE_IRK_LEN,
                                       param,
                                       btm_ble_resolving_list_vsc_op_cmpl);
    }

    if (st == BTM_CMD_STARTED) {
        FUNC3( p_dev_rec->bd_addr, BTM_BLE_META_REMOVE_IRK_ENTRY);
    }

    return st;
}