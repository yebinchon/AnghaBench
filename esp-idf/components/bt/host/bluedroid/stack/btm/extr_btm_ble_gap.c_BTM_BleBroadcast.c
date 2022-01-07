
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_START_STOP_ADV_CMPL_CBACK ;
struct TYPE_9__ {int own_addr_type; } ;
typedef TYPE_3__ tBTM_LE_RANDOM_CB ;
struct TYPE_8__ {int bda; int type; } ;
struct TYPE_10__ {scalar_t__ adv_mode; int * p_stop_adv_cb; int evt_type; int afp; int adv_chnl_map; TYPE_2__ direct_bda; scalar_t__ adv_interval_max; scalar_t__ adv_interval_min; scalar_t__ scan_rsp; } ;
typedef TYPE_4__ tBTM_BLE_INQ_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_7__ {TYPE_4__ inq_var; TYPE_3__ addr_mgnt_cb; } ;
struct TYPE_12__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_11__ {int (* supports_ble ) () ;} ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BTM_BLE_ADV_DISABLE ;
 scalar_t__ BTM_BLE_ADV_ENABLE ;
 int BTM_BLE_CONNECT_EVT ;
 int BTM_BLE_DISCOVER_EVT ;
 scalar_t__ BTM_BLE_GAP_ADV_INT ;
 int BTM_BLE_NON_CONNECT_EVT ;
 scalar_t__ BTM_BLE_PC_ADV_TEST_MODE ;
 int BTM_BLE_RL_ADV ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int TRUE ;
 int btm_ble_disable_resolving_list (int ,int ) ;
 int btm_ble_start_adv () ;
 int btm_ble_stop_adv () ;
 TYPE_6__ btm_cb ;
 int btsnd_hcic_ble_write_adv_params (int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_5__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleBroadcast(BOOLEAN start, tBTM_START_STOP_ADV_CMPL_CBACK *p_stop_adv_cback)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    tBTM_LE_RANDOM_CB *p_addr_cb = &btm_cb.ble_ctr_cb.addr_mgnt_cb;
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
    UINT8 evt_type = p_cb->scan_rsp ? BTM_BLE_DISCOVER_EVT : BTM_BLE_NON_CONNECT_EVT;

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }







    if (start && p_cb->adv_mode == BTM_BLE_ADV_DISABLE) {

        if (!btsnd_hcic_ble_write_adv_params ((UINT16)(p_cb->adv_interval_min ? p_cb->adv_interval_min :
                                              BTM_BLE_GAP_ADV_INT),
                                              (UINT16)(p_cb->adv_interval_max ? p_cb->adv_interval_max :
                                                      BTM_BLE_GAP_ADV_INT),
                                              evt_type,
                                              p_addr_cb->own_addr_type,
                                              p_cb->direct_bda.type,
                                              p_cb->direct_bda.bda,
                                              p_cb->adv_chnl_map,
                                              p_cb->afp))

        {
            status = BTM_NO_RESOURCES;
        } else {
            p_cb->evt_type = evt_type;
        }

        status = btm_ble_start_adv ();
    } else if (!start && p_cb->adv_mode == BTM_BLE_ADV_ENABLE) {

        p_cb->p_stop_adv_cb = p_stop_adv_cback;
        status = btm_ble_stop_adv();

        btm_ble_disable_resolving_list(BTM_BLE_RL_ADV, TRUE);

    } else {




        status = BTM_SUCCESS;
    }
    return status;
}
