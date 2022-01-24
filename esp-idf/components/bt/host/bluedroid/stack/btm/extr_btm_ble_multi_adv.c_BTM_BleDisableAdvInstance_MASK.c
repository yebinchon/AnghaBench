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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ adv_inst_max; } ;
typedef  TYPE_1__ tBTM_BLE_VSC_CB ;
typedef  int UINT8 ;
struct TYPE_7__ {int /*<<< orphan*/  in_use; int /*<<< orphan*/  raddr_timer_ent; } ;
struct TYPE_6__ {TYPE_3__* p_adv_inst; } ;

/* Variables and functions */
 int BTM_BLE_MULTI_ADV_DEFAULT_STD ; 
 int /*<<< orphan*/  BTM_BLE_MULTI_ADV_DISABLE_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_ERR_PROCESSING ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_2__ btm_multi_adv_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

tBTM_STATUS FUNC7 (UINT8 inst_id)
{
    tBTM_STATUS rt = BTM_ILLEGAL_VALUE;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    FUNC3("BTM_BleDisableAdvInstance with inst_id:%d", inst_id);

    FUNC0(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.adv_inst_max) {
        FUNC2("Controller does not support Multi ADV");
        return BTM_ERR_PROCESSING;
    }

    if (inst_id < FUNC1() &&
            inst_id != BTM_BLE_MULTI_ADV_DEFAULT_STD) {
        if ((rt = FUNC4(FALSE, inst_id, BTM_BLE_MULTI_ADV_DISABLE_EVT))
                == BTM_CMD_STARTED) {
            FUNC5(&btm_multi_adv_cb.p_adv_inst[inst_id - 1]);
            FUNC6(&btm_multi_adv_cb.p_adv_inst[inst_id - 1].raddr_timer_ent);
            btm_multi_adv_cb.p_adv_inst[inst_id - 1].in_use = FALSE;
        }
    }
    return rt;
}