#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_18__ {scalar_t__ param; } ;
struct TYPE_15__ {int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {scalar_t__ inst_id; scalar_t__ adv_evt; TYPE_7__ raddr_timer_ent; TYPE_4__ rpa; } ;
typedef  TYPE_2__ tBTM_BLE_MULTI_ADV_INST ;
struct TYPE_14__ {scalar_t__ adv_type; scalar_t__ channel_map; scalar_t__ adv_filter_policy; scalar_t__ tx_power; int /*<<< orphan*/  adv_int_max; int /*<<< orphan*/  adv_int_min; } ;
typedef  TYPE_3__ tBTM_BLE_ADV_PARAMS ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_12__ {scalar_t__ privacy_mode; } ;
struct TYPE_19__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_17__ {TYPE_5__* (* get_address ) () ;} ;
struct TYPE_16__ {TYPE_4__ address; } ;
typedef  scalar_t__ TIMER_PARAM_TYPE ;
typedef  TYPE_4__ BD_ADDR ;

/* Variables and functions */
 scalar_t__ AP_SCAN_CONN_ALL ; 
 scalar_t__ AP_SCAN_CONN_POLICY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__) ; 
 scalar_t__ BLE_ADDR_PUBLIC ; 
 scalar_t__ BLE_ADDR_RANDOM ; 
 scalar_t__ BTM_BLE_ADV_TX_POWER_MAX ; 
 scalar_t__ BTM_BLE_DEFAULT_ADV_CHNL_MAP ; 
 scalar_t__ BTM_BLE_MULTI_ADV_SET_PARAM ; 
 int BTM_BLE_MULTI_ADV_SET_PARAM_LEN ; 
 int /*<<< orphan*/  BTM_BLE_PRIVATE_ADDR_INT ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 scalar_t__ BTM_PRIVACY_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTU_TTYPE_BLE_RANDOM_ADDR ; 
 int /*<<< orphan*/  HCI_BLE_MULTI_ADV_OCF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btm_ble_multi_adv_vsc_cmpl_cback ; 
 TYPE_8__ btm_cb ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC10 () ; 

tBTM_STATUS FUNC11 (tBTM_BLE_MULTI_ADV_INST *p_inst,
        tBTM_BLE_ADV_PARAMS *p_params,
        UINT8 cb_evt)
{
    UINT8           param[BTM_BLE_MULTI_ADV_SET_PARAM_LEN], *pp;
    tBTM_STATUS     rt;
    BD_ADDR         dummy = {0, 0, 0, 0, 0, 0};

    pp = param;
    FUNC9(param, 0, BTM_BLE_MULTI_ADV_SET_PARAM_LEN);

    FUNC4(pp, BTM_BLE_MULTI_ADV_SET_PARAM);

    FUNC3 (pp, p_params->adv_int_min);
    FUNC3 (pp, p_params->adv_int_max);
    FUNC4  (pp, p_params->adv_type);

#if (defined BLE_PRIVACY_SPT && BLE_PRIVACY_SPT == TRUE)
    if (btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE) {
        UINT8_TO_STREAM  (pp, BLE_ADDR_RANDOM);
        BDADDR_TO_STREAM (pp, p_inst->rpa);
    } else
#endif
    {
        FUNC4  (pp, BLE_ADDR_PUBLIC);
        FUNC0 (pp, FUNC8()->get_address()->address);
    }

    FUNC1 (" btm_ble_multi_adv_set_params,Min %d, Max %d,adv_type %d",
                     p_params->adv_int_min, p_params->adv_int_max, p_params->adv_type);

    FUNC4  (pp, 0);
    FUNC0 (pp, dummy);

    if (p_params->channel_map == 0 || p_params->channel_map > BTM_BLE_DEFAULT_ADV_CHNL_MAP) {
        p_params->channel_map = BTM_BLE_DEFAULT_ADV_CHNL_MAP;
    }
    FUNC4 (pp, p_params->channel_map);

    if (p_params->adv_filter_policy >= AP_SCAN_CONN_POLICY_MAX) {
        p_params->adv_filter_policy = AP_SCAN_CONN_ALL;
    }
    FUNC4 (pp, p_params->adv_filter_policy);

    FUNC4 (pp, p_inst->inst_id);

    if (p_params->tx_power > BTM_BLE_ADV_TX_POWER_MAX) {
        p_params->tx_power = BTM_BLE_ADV_TX_POWER_MAX;
    }
    FUNC4 (pp, FUNC5(p_params->tx_power));

    FUNC1("set_params:Chnl Map %d,adv_fltr policy %d,ID:%d, TX Power%d",
                    p_params->channel_map, p_params->adv_filter_policy, p_inst->inst_id, p_params->tx_power);

    if ((rt = FUNC2 (HCI_BLE_MULTI_ADV_OCF,
                                         BTM_BLE_MULTI_ADV_SET_PARAM_LEN,
                                         param,
                                         btm_ble_multi_adv_vsc_cmpl_cback))
            == BTM_CMD_STARTED) {
        p_inst->adv_evt = p_params->adv_type;

#if (defined BLE_PRIVACY_SPT && BLE_PRIVACY_SPT == TRUE)
        if (btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE) {
            /* start timer */
            p_inst->raddr_timer_ent.param = (TIMER_PARAM_TYPE) p_inst;
            btu_start_timer_oneshot(&p_inst->raddr_timer_ent, BTU_TTYPE_BLE_RANDOM_ADDR,
                                    BTM_BLE_PRIVATE_ADDR_INT);
        }
#endif
        FUNC6(BTM_BLE_MULTI_ADV_SET_PARAM, p_inst->inst_id, cb_evt);
    }
    return rt;
}