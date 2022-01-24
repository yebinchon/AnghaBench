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
struct TYPE_5__ {int in_controller_list; int /*<<< orphan*/  resolving_list_index; int /*<<< orphan*/  static_addr; int /*<<< orphan*/  static_addr_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  bd_addr; TYPE_1__ ble; } ;
typedef  TYPE_2__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_7__ {scalar_t__ (* supports_ble_privacy ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_META_READ_IRK_ENTRY ; 
 int /*<<< orphan*/  BTM_BLE_META_READ_IRK_LEN ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 int BTM_RESOLVING_LIST_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ BTM_WRONG_MODE ; 
 int /*<<< orphan*/  HCI_VENDOR_BLE_RPA_VSC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btm_ble_resolving_list_vsc_op_cmpl ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

tBTM_STATUS FUNC6(tBTM_SEC_DEV_REC *p_dev_rec)
{
    tBTM_STATUS st = BTM_NO_RESOURCES;

    if (!(p_dev_rec->ble.in_controller_list & BTM_RESOLVING_LIST_BIT)) {
        return BTM_WRONG_MODE;
    }

    if (FUNC4()->supports_ble_privacy()) {
        if (FUNC3(p_dev_rec->ble.static_addr_type,
                p_dev_rec->ble.static_addr)) {
            st =  BTM_CMD_STARTED;
        }
    } else {
        UINT8 param[20] = {0};
        UINT8 *p = param;

        FUNC1(p, BTM_BLE_META_READ_IRK_ENTRY);
        FUNC1(p, p_dev_rec->ble.resolving_list_index);

        st = FUNC0 (HCI_VENDOR_BLE_RPA_VSC,
                                        BTM_BLE_META_READ_IRK_LEN,
                                        param,
                                        btm_ble_resolving_list_vsc_op_cmpl);
    }

    if (st == BTM_CMD_STARTED) {
        FUNC2(p_dev_rec->bd_addr,
                                           BTM_BLE_META_READ_IRK_ENTRY);
    }

    return st;
}