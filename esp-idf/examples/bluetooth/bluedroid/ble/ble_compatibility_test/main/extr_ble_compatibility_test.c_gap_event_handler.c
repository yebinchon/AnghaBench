
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int esp_gap_ble_cb_event_t ;
struct TYPE_21__ {scalar_t__ bd_addr; int status; } ;
struct TYPE_19__ {int fail_reason; int success; int addr_type; int bd_addr; } ;
struct TYPE_18__ {int key_type; } ;
struct TYPE_17__ {int passkey; } ;
struct TYPE_16__ {int bd_addr; } ;
struct TYPE_20__ {TYPE_7__ auth_cmpl; TYPE_6__ ble_key; TYPE_5__ key_notif; TYPE_4__ ble_req; } ;
struct TYPE_15__ {int timeout; int latency; int conn_int; int max_int; int min_int; int status; } ;
struct TYPE_14__ {int status; } ;
struct TYPE_13__ {int status; } ;
struct TYPE_12__ {TYPE_9__ remove_bond_dev_cmpl; TYPE_8__ ble_security; TYPE_3__ update_conn_params; TYPE_2__ adv_stop_cmpl; TYPE_1__ adv_start_cmpl; } ;
typedef TYPE_10__ esp_ble_gap_cb_param_t ;
typedef int* esp_bd_addr_t ;


 int ADV_CONFIG_FLAG ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int EXAMPLE_DEBUG (int ,char*,...) ;
 int EXAMPLE_TAG ;
 int SCAN_RSP_CONFIG_FLAG ;
 int adv_config_done ;
 int adv_params ;
 int esp_ble_gap_security_rsp (int ,int) ;
 int esp_ble_gap_start_advertising (int *) ;
 int esp_key_type_to_str (int ) ;
 int esp_log_buffer_hex (int ,void*,int) ;
 int memcpy (int*,int ,int) ;
 int show_bonded_devices () ;

__attribute__((used)) static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
        case 140:
            adv_config_done &= (~ADV_CONFIG_FLAG);
            if (adv_config_done == 0){
                esp_ble_gap_start_advertising(&adv_params);
            }
            break;
        case 130:
            adv_config_done &= (~SCAN_RSP_CONFIG_FLAG);
            if (adv_config_done == 0){
                esp_ble_gap_start_advertising(&adv_params);
            }
            break;

        case 139:

            if (param->adv_start_cmpl.status != ESP_BT_STATUS_SUCCESS) {
                ESP_LOGE(EXAMPLE_TAG, "advertising start failed");
            }else{
                ESP_LOGI(EXAMPLE_TAG, "(0) ***** advertising start successfully ***** \n");
            }
            break;
        case 138:
            if (param->adv_stop_cmpl.status != ESP_BT_STATUS_SUCCESS) {
                ESP_LOGE(EXAMPLE_TAG, "Advertising stop failed");
            }
            else {
                ESP_LOGI(EXAMPLE_TAG, "Stop adv successfully\n");
            }
            break;
        case 128:
            EXAMPLE_DEBUG(EXAMPLE_TAG, "update connection params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d",
                  param->update_conn_params.status,
                  param->update_conn_params.min_int,
                  param->update_conn_params.max_int,
                  param->update_conn_params.conn_int,
                  param->update_conn_params.latency,
                  param->update_conn_params.timeout);
            break;
        case 133:
            EXAMPLE_DEBUG(EXAMPLE_TAG, "ESP_GAP_BLE_PASSKEY_REQ_EVT");

            break;

        case 135:


            ESP_LOGI(EXAMPLE_TAG, "ESP_GAP_BLE_NC_REQ_EVT, the passkey Notify number:%d", param->ble_security.key_notif.passkey);
            break;
        case 129:


            esp_ble_gap_security_rsp(param->ble_security.ble_req.bd_addr, 1);
            break;
        case 134:

            ESP_LOGI(EXAMPLE_TAG, "The passkey notify number:%d", param->ble_security.key_notif.passkey);
            break;
        case 136:

            EXAMPLE_DEBUG(EXAMPLE_TAG, "key type = %s", esp_key_type_to_str(param->ble_security.ble_key.key_type));
            break;
        case 137: {
            esp_bd_addr_t bd_addr;
            memcpy(bd_addr, param->ble_security.auth_cmpl.bd_addr, sizeof(esp_bd_addr_t));
            EXAMPLE_DEBUG(EXAMPLE_TAG, "remote BD_ADDR: %08x%04x", (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],

                    (bd_addr[4] << 8) + bd_addr[5]);
            EXAMPLE_DEBUG(EXAMPLE_TAG, "address type = %d", param->ble_security.auth_cmpl.addr_type);
            if (param->ble_security.auth_cmpl.success){
                ESP_LOGI(EXAMPLE_TAG, "(1) ***** pair status = success ***** \n");
            }
            else {
                ESP_LOGI(EXAMPLE_TAG, "***** pair status = fail, reason = 0x%x *****\n", param->ble_security.auth_cmpl.fail_reason);
            }
            show_bonded_devices();
            break;
        }
        case 132: {
            EXAMPLE_DEBUG(EXAMPLE_TAG, "ESP_GAP_BLE_REMOVE_BOND_DEV_COMPLETE_EVT status = %d", param->remove_bond_dev_cmpl.status);



            EXAMPLE_DEBUG(EXAMPLE_TAG, "------------------------------------");
            break;
        }
        default:
            break;
    }
}
