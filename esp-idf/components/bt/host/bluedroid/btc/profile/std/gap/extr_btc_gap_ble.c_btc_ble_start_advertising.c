
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* tBTA_START_ADV_CMPL_CBACK ) (scalar_t__) ;
struct TYPE_5__ {int type; int bda; } ;
typedef TYPE_1__ tBLE_BD_ADDR ;
typedef scalar_t__ esp_bt_status_t ;
struct TYPE_6__ {scalar_t__ adv_type; scalar_t__ adv_filter_policy; int channel_map; int own_addr_type; int adv_int_max; int adv_int_min; int peer_addr_type; int peer_addr; } ;
typedef TYPE_2__ esp_ble_adv_params_t ;


 int ADV_CHNL_ALL ;
 scalar_t__ ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY ;
 scalar_t__ ADV_FILTER_ALLOW_SCAN_WLST_CON_WLST ;
 scalar_t__ ADV_TYPE_DIRECT_IND_LOW ;
 scalar_t__ ADV_TYPE_IND ;
 int BLE_ADDR_TYPE_PUBLIC ;
 int BLE_ADDR_TYPE_RANDOM ;
 int BLE_ISVALID_PARAM (int ,int ,int ) ;
 int BTA_DmSetBleAdvParamsAll (int ,int ,scalar_t__,int ,int,scalar_t__,TYPE_1__*,int (*) (scalar_t__)) ;
 int BTC_TRACE_DEBUG (char*) ;
 int BTC_TRACE_ERROR (char*) ;
 int BTM_BLE_ADV_INT_MAX ;
 int BTM_BLE_ADV_INT_MIN ;
 int ESP_BD_ADDR_LEN ;
 scalar_t__ ESP_BT_STATUS_PARM_INVALID ;
 scalar_t__ ESP_BT_STATUS_SUCCESS ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void btc_ble_start_advertising (esp_ble_adv_params_t *ble_adv_params, tBTA_START_ADV_CMPL_CBACK start_adv_cback)
{
    tBLE_BD_ADDR peer_addr;
    esp_bt_status_t status = ESP_BT_STATUS_SUCCESS;
    if (!BLE_ISVALID_PARAM(ble_adv_params->adv_int_min, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX) ||
            !BLE_ISVALID_PARAM(ble_adv_params->adv_int_max, BTM_BLE_ADV_INT_MIN, BTM_BLE_ADV_INT_MAX)) {
        status = ESP_BT_STATUS_PARM_INVALID;
        BTC_TRACE_ERROR("Invalid advertisting interval parameters.\n");
    }

    if ((ble_adv_params->adv_type < ADV_TYPE_IND) ||
            (ble_adv_params->adv_type > ADV_TYPE_DIRECT_IND_LOW) ) {
        status = ESP_BT_STATUS_PARM_INVALID;
        BTC_TRACE_ERROR("Invalid advertisting type parameters.\n");
    }

    if ((ble_adv_params->adv_filter_policy < ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY) ||
            (ble_adv_params->adv_filter_policy > ADV_FILTER_ALLOW_SCAN_WLST_CON_WLST) ) {
        status = ESP_BT_STATUS_PARM_INVALID;
        BTC_TRACE_ERROR("Invalid advertisting type parameters.\n");
    }

    if((ble_adv_params->channel_map | ADV_CHNL_ALL) != ADV_CHNL_ALL || ble_adv_params->channel_map == 0) {
        status = ESP_BT_STATUS_PARM_INVALID;
        BTC_TRACE_ERROR("Invalid advertisting channel map parameters.\n");
    }
    if (!BLE_ISVALID_PARAM(ble_adv_params->peer_addr_type, BLE_ADDR_TYPE_PUBLIC, BLE_ADDR_TYPE_RANDOM)) {
        status = ESP_BT_STATUS_PARM_INVALID;
        BTC_TRACE_ERROR("Invalid advertisting peer address type parameters.\n");
    }
    if(status != ESP_BT_STATUS_SUCCESS) {
        if(start_adv_cback) {
            start_adv_cback(status);
        }
        return;
    }

    BTC_TRACE_DEBUG("API_Ble_AppStartAdvertising\n");

    memcpy(peer_addr.bda, ble_adv_params->peer_addr, ESP_BD_ADDR_LEN);
    peer_addr.type = ble_adv_params->peer_addr_type;
    BTA_DmSetBleAdvParamsAll(ble_adv_params->adv_int_min,
                             ble_adv_params->adv_int_max,
                             ble_adv_params->adv_type,
                             ble_adv_params->own_addr_type,
                             ble_adv_params->channel_map,
                             ble_adv_params->adv_filter_policy,
                             &peer_addr,
                             start_adv_cback);
}
