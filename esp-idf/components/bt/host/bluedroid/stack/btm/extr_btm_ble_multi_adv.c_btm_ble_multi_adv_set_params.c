
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_18__ {scalar_t__ param; } ;
struct TYPE_15__ {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_13__ {scalar_t__ inst_id; scalar_t__ adv_evt; TYPE_7__ raddr_timer_ent; TYPE_4__ rpa; } ;
typedef TYPE_2__ tBTM_BLE_MULTI_ADV_INST ;
struct TYPE_14__ {scalar_t__ adv_type; scalar_t__ channel_map; scalar_t__ adv_filter_policy; scalar_t__ tx_power; int adv_int_max; int adv_int_min; } ;
typedef TYPE_3__ tBTM_BLE_ADV_PARAMS ;
typedef int UINT8 ;
struct TYPE_12__ {scalar_t__ privacy_mode; } ;
struct TYPE_19__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_17__ {TYPE_5__* (* get_address ) () ;} ;
struct TYPE_16__ {TYPE_4__ address; } ;
typedef scalar_t__ TIMER_PARAM_TYPE ;
typedef TYPE_4__ BD_ADDR ;


 scalar_t__ AP_SCAN_CONN_ALL ;
 scalar_t__ AP_SCAN_CONN_POLICY_MAX ;
 int BDADDR_TO_STREAM (int *,TYPE_4__) ;
 scalar_t__ BLE_ADDR_PUBLIC ;
 scalar_t__ BLE_ADDR_RANDOM ;
 scalar_t__ BTM_BLE_ADV_TX_POWER_MAX ;
 scalar_t__ BTM_BLE_DEFAULT_ADV_CHNL_MAP ;
 scalar_t__ BTM_BLE_MULTI_ADV_SET_PARAM ;
 int BTM_BLE_MULTI_ADV_SET_PARAM_LEN ;
 int BTM_BLE_PRIVATE_ADDR_INT ;
 int BTM_CMD_STARTED ;
 scalar_t__ BTM_PRIVACY_NONE ;
 int BTM_TRACE_EVENT (char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 int BTM_VendorSpecificCommand (int ,int,int *,int ) ;
 int BTU_TTYPE_BLE_RANDOM_ADDR ;
 int HCI_BLE_MULTI_ADV_OCF ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,scalar_t__) ;
 scalar_t__ btm_ble_map_adv_tx_power (scalar_t__) ;
 int btm_ble_multi_adv_enq_op_q (scalar_t__,scalar_t__,int ) ;
 int btm_ble_multi_adv_vsc_cmpl_cback ;
 TYPE_8__ btm_cb ;
 int btu_start_timer_oneshot (TYPE_7__*,int ,int ) ;
 TYPE_6__* controller_get_interface () ;
 int memset (int *,int ,int) ;
 TYPE_5__* stub1 () ;

tBTM_STATUS btm_ble_multi_adv_set_params (tBTM_BLE_MULTI_ADV_INST *p_inst,
        tBTM_BLE_ADV_PARAMS *p_params,
        UINT8 cb_evt)
{
    UINT8 param[BTM_BLE_MULTI_ADV_SET_PARAM_LEN], *pp;
    tBTM_STATUS rt;
    BD_ADDR dummy = {0, 0, 0, 0, 0, 0};

    pp = param;
    memset(param, 0, BTM_BLE_MULTI_ADV_SET_PARAM_LEN);

    UINT8_TO_STREAM(pp, BTM_BLE_MULTI_ADV_SET_PARAM);

    UINT16_TO_STREAM (pp, p_params->adv_int_min);
    UINT16_TO_STREAM (pp, p_params->adv_int_max);
    UINT8_TO_STREAM (pp, p_params->adv_type);







    {
        UINT8_TO_STREAM (pp, BLE_ADDR_PUBLIC);
        BDADDR_TO_STREAM (pp, controller_get_interface()->get_address()->address);
    }

    BTM_TRACE_EVENT (" btm_ble_multi_adv_set_params,Min %d, Max %d,adv_type %d",
                     p_params->adv_int_min, p_params->adv_int_max, p_params->adv_type);

    UINT8_TO_STREAM (pp, 0);
    BDADDR_TO_STREAM (pp, dummy);

    if (p_params->channel_map == 0 || p_params->channel_map > BTM_BLE_DEFAULT_ADV_CHNL_MAP) {
        p_params->channel_map = BTM_BLE_DEFAULT_ADV_CHNL_MAP;
    }
    UINT8_TO_STREAM (pp, p_params->channel_map);

    if (p_params->adv_filter_policy >= AP_SCAN_CONN_POLICY_MAX) {
        p_params->adv_filter_policy = AP_SCAN_CONN_ALL;
    }
    UINT8_TO_STREAM (pp, p_params->adv_filter_policy);

    UINT8_TO_STREAM (pp, p_inst->inst_id);

    if (p_params->tx_power > BTM_BLE_ADV_TX_POWER_MAX) {
        p_params->tx_power = BTM_BLE_ADV_TX_POWER_MAX;
    }
    UINT8_TO_STREAM (pp, btm_ble_map_adv_tx_power(p_params->tx_power));

    BTM_TRACE_EVENT("set_params:Chnl Map %d,adv_fltr policy %d,ID:%d, TX Power%d",
                    p_params->channel_map, p_params->adv_filter_policy, p_inst->inst_id, p_params->tx_power);

    if ((rt = BTM_VendorSpecificCommand (HCI_BLE_MULTI_ADV_OCF,
                                         BTM_BLE_MULTI_ADV_SET_PARAM_LEN,
                                         param,
                                         btm_ble_multi_adv_vsc_cmpl_cback))
            == BTM_CMD_STARTED) {
        p_inst->adv_evt = p_params->adv_type;
        btm_ble_multi_adv_enq_op_q(BTM_BLE_MULTI_ADV_SET_PARAM, p_inst->inst_id, cb_evt);
    }
    return rt;
}
