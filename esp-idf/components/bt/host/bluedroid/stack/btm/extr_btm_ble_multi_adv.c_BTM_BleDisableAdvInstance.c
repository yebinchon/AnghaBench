
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ adv_inst_max; } ;
typedef TYPE_1__ tBTM_BLE_VSC_CB ;
typedef int UINT8 ;
struct TYPE_7__ {int in_use; int raddr_timer_ent; } ;
struct TYPE_6__ {TYPE_3__* p_adv_inst; } ;


 int BTM_BLE_MULTI_ADV_DEFAULT_STD ;
 int BTM_BLE_MULTI_ADV_DISABLE_EVT ;
 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 int BTM_BleMaxMultiAdvInstanceCount () ;
 int BTM_CMD_STARTED ;
 int BTM_ERR_PROCESSING ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*,int) ;
 int FALSE ;
 int btm_ble_enable_multi_adv (int ,int,int ) ;
 int btm_ble_multi_adv_configure_rpa (TYPE_3__*) ;
 TYPE_2__ btm_multi_adv_cb ;
 int btu_stop_timer_oneshot (int *) ;

tBTM_STATUS BTM_BleDisableAdvInstance (UINT8 inst_id)
{
    tBTM_STATUS rt = BTM_ILLEGAL_VALUE;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    BTM_TRACE_EVENT("BTM_BleDisableAdvInstance with inst_id:%d", inst_id);

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.adv_inst_max) {
        BTM_TRACE_ERROR("Controller does not support Multi ADV");
        return BTM_ERR_PROCESSING;
    }

    if (inst_id < BTM_BleMaxMultiAdvInstanceCount() &&
            inst_id != BTM_BLE_MULTI_ADV_DEFAULT_STD) {
        if ((rt = btm_ble_enable_multi_adv(FALSE, inst_id, BTM_BLE_MULTI_ADV_DISABLE_EVT))
                == BTM_CMD_STARTED) {
            btm_ble_multi_adv_configure_rpa(&btm_multi_adv_cb.p_adv_inst[inst_id - 1]);
            btu_stop_timer_oneshot(&btm_multi_adv_cb.p_adv_inst[inst_id - 1].raddr_timer_ent);
            btm_multi_adv_cb.p_adv_inst[inst_id - 1].in_use = FALSE;
        }
    }
    return rt;
}
