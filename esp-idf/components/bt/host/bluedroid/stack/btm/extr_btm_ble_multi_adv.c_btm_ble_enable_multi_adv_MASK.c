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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int UINT8 ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int BTM_BLE_MULTI_ADV_ENB ; 
 int BTM_BLE_MULTI_ADV_ENB_LEN ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BLE_MULTI_ADV_OCF ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  btm_ble_multi_adv_vsc_cmpl_cback ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC5 (BOOLEAN enable, UINT8 inst_id, UINT8 cb_evt)
{
    UINT8           param[BTM_BLE_MULTI_ADV_ENB_LEN], *pp;
    UINT8           enb = enable ? 1 : 0;
    tBTM_STATUS     rt;

    pp = param;
    FUNC4(param, 0, BTM_BLE_MULTI_ADV_ENB_LEN);

    FUNC2 (pp, BTM_BLE_MULTI_ADV_ENB);
    FUNC2 (pp, enb);
    FUNC2 (pp, inst_id);

    FUNC0 (" btm_ble_enable_multi_adv: enb %d, Inst ID %d", enb, inst_id);

    if ((rt = FUNC1 (HCI_BLE_MULTI_ADV_OCF,
                                         BTM_BLE_MULTI_ADV_ENB_LEN,
                                         param,
                                         btm_ble_multi_adv_vsc_cmpl_cback))
            == BTM_CMD_STARTED) {
        FUNC3(BTM_BLE_MULTI_ADV_ENB, inst_id, cb_evt);
    }
    return rt;
}