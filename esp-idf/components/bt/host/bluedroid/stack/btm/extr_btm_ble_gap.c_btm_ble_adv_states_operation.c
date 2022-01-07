
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int (* BTM_TOPOLOGY_FUNC_PTR ) (int ) ;
typedef int BOOLEAN ;







 int BTM_BLE_STATE_CONN_ADV_BIT ;
 int BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT ;
 int BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT ;
 int BTM_BLE_STATE_NON_CONN_ADV_BIT ;
 int BTM_BLE_STATE_SCAN_ADV_BIT ;
 int BTM_TRACE_ERROR (char*,int) ;
 int FALSE ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ) ;

__attribute__((used)) static BOOLEAN btm_ble_adv_states_operation(BTM_TOPOLOGY_FUNC_PTR *p_handler, UINT8 adv_evt)
{
    BOOLEAN rt = FALSE;

    switch (adv_evt) {
    case 131:
        rt = (*p_handler)(BTM_BLE_STATE_CONN_ADV_BIT);
        break;

    case 128:
        rt = (*p_handler) (BTM_BLE_STATE_NON_CONN_ADV_BIT);
        break;
    case 132:
        rt = (*p_handler) (BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT);
        break;

    case 129:
        rt = (*p_handler) (BTM_BLE_STATE_SCAN_ADV_BIT);
        break;

    case 130:
        rt = (*p_handler) (BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT);
        break;

    default:
        BTM_TRACE_ERROR("unknown adv event : %d", adv_evt);
        break;
    }

    return rt;
}
