#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_9__ {scalar_t__ connectable_mode; } ;
struct TYPE_10__ {scalar_t__ privacy_mode; TYPE_3__ inq_var; } ;
struct TYPE_12__ {TYPE_4__ ble_ctr_cb; TYPE_1__* acl_db; } ;
struct TYPE_11__ {TYPE_2__* p_adv_inst; } ;
struct TYPE_8__ {int /*<<< orphan*/  rpa; } ;
struct TYPE_7__ {int /*<<< orphan*/  conn_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 scalar_t__ BTM_BLE_CONNECTABLE ; 
 scalar_t__ BTM_BLE_MULTI_ADV_DEFAULT_STD ; 
 scalar_t__ BTM_BLE_MULTI_ADV_MAX ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ BTM_PRIVACY_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ HCI_VSE_SUBCODE_BLE_MULTI_ADV_ST_CHG ; 
 scalar_t__ MAX_L2CAP_LINKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_6__ btm_cb ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__ btm_multi_adv_cb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(UINT8 len, UINT8 *p)
{
    UINT8   sub_event;
    UINT8   adv_inst, idx;
    UINT16  conn_handle;

    /* Check if this is a BLE RSSI vendor specific event */
    FUNC3(sub_event, p);
    len--;

    FUNC1("btm_ble_multi_adv_vse_cback called with event:%d", sub_event);
    if ((sub_event == HCI_VSE_SUBCODE_BLE_MULTI_ADV_ST_CHG) && (len >= 4)) {
        FUNC3(adv_inst, p);
        ++p;
        FUNC2(conn_handle, p);

        if ((idx = FUNC6(conn_handle)) != MAX_L2CAP_LINKS) {
#if (defined BLE_PRIVACY_SPT && BLE_PRIVACY_SPT == TRUE)
            if (btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE &&
                    adv_inst <= BTM_BLE_MULTI_ADV_MAX && adv_inst !=  BTM_BLE_MULTI_ADV_DEFAULT_STD) {
                memcpy(btm_cb.acl_db[idx].conn_addr, btm_multi_adv_cb.p_adv_inst[adv_inst - 1].rpa,
                       BD_ADDR_LEN);
            }
#endif
        }

        if (adv_inst < FUNC0() &&
                adv_inst !=  BTM_BLE_MULTI_ADV_DEFAULT_STD) {
            FUNC1("btm_ble_multi_adv_reenable called");
            FUNC4(adv_inst);
        }
        /* re-enable connectibility */
        else if (adv_inst == BTM_BLE_MULTI_ADV_DEFAULT_STD) {
            if (btm_cb.ble_ctr_cb.inq_var.connectable_mode == BTM_BLE_CONNECTABLE) {
                FUNC5 ( btm_cb.ble_ctr_cb.inq_var.connectable_mode );
            }
        }

    }

}