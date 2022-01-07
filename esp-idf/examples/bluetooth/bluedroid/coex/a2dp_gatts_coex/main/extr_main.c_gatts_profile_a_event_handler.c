
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_9__ ;
typedef struct TYPE_50__ TYPE_8__ ;
typedef struct TYPE_49__ TYPE_7__ ;
typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_5__ ;
typedef struct TYPE_46__ TYPE_4__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_2__ ;
typedef struct TYPE_43__ TYPE_28__ ;
typedef struct TYPE_42__ TYPE_27__ ;
typedef struct TYPE_41__ TYPE_26__ ;
typedef struct TYPE_40__ TYPE_21__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_19__ ;
typedef struct TYPE_37__ TYPE_18__ ;
typedef struct TYPE_36__ TYPE_17__ ;
typedef struct TYPE_35__ TYPE_16__ ;
typedef struct TYPE_34__ TYPE_15__ ;
typedef struct TYPE_33__ TYPE_14__ ;
typedef struct TYPE_32__ TYPE_13__ ;
typedef struct TYPE_31__ TYPE_12__ ;
typedef struct TYPE_30__ TYPE_11__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int notify_data ;
typedef int indicate_data ;
typedef int esp_gatts_cb_event_t ;
struct TYPE_33__ {int len; int* value; int handle; } ;
struct TYPE_36__ {TYPE_14__ attr_value; } ;
typedef TYPE_17__ esp_gatt_rsp_t ;
typedef int esp_gatt_if_t ;
typedef int esp_err_t ;
struct TYPE_51__ {int status; int* value; int len; } ;
struct TYPE_50__ {int remote_bda; } ;
struct TYPE_49__ {int service_handle; int status; } ;
struct TYPE_48__ {int service_handle; int attr_handle; int status; } ;
struct TYPE_46__ {int attr_handle; int service_handle; int status; } ;
struct TYPE_44__ {int service_handle; int status; } ;
struct TYPE_39__ {int mtu; } ;
struct TYPE_35__ {int len; int* value; int trans_id; int conn_id; int handle; int is_prep; } ;
struct TYPE_34__ {int trans_id; int conn_id; int handle; } ;
struct TYPE_29__ {int app_id; int status; } ;
struct TYPE_37__ {TYPE_9__ conf; TYPE_8__ connect; TYPE_7__ start; TYPE_6__ add_char_descr; TYPE_4__ add_char; TYPE_2__ create; TYPE_1__ mtu; TYPE_16__ write; TYPE_15__ read; TYPE_10__ reg; } ;
typedef TYPE_18__ esp_ble_gatts_cb_param_t ;
struct TYPE_38__ {int bda; int member_0; } ;
typedef TYPE_19__ esp_ble_conn_update_params_t ;
typedef int esp_bd_addr_t ;
struct TYPE_47__ {int uuid16; } ;
struct TYPE_45__ {int uuid16; } ;
struct TYPE_43__ {TYPE_3__ uuid; void* len; } ;
struct TYPE_42__ {TYPE_5__ uuid; void* len; } ;
struct TYPE_30__ {int uuid16; } ;
struct TYPE_31__ {TYPE_11__ uuid; void* len; } ;
struct TYPE_32__ {int inst_id; TYPE_12__ uuid; } ;
struct TYPE_41__ {int is_primary; TYPE_13__ id; } ;
struct TYPE_40__ {int descr_handle; TYPE_27__ descr_uuid; int service_handle; int char_handle; TYPE_28__ char_uuid; TYPE_26__ service_id; } ;


 int BLE_ADV_NAME ;
 int BT_BLE_COEX_TAG ;
 int ESP_GATT_CHAR_PROP_BIT_INDICATE ;
 int ESP_GATT_CHAR_PROP_BIT_NOTIFY ;
 int ESP_GATT_CHAR_PROP_BIT_READ ;
 int ESP_GATT_CHAR_PROP_BIT_WRITE ;
 int ESP_GATT_OK ;
 int ESP_GATT_PERM_READ ;
 int ESP_GATT_PERM_WRITE ;
 int ESP_GATT_UUID_CHAR_CLIENT_CONFIG ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 void* ESP_UUID_LEN_16 ;
 int GATTS_CHAR_UUID_A ;
 int GATTS_NUM_HANDLE_A ;
 int GATTS_SERVICE_UUID_A ;
 size_t PROFILE_A_APP_ID ;
 int a_prepare_write_env ;
 int a_property ;
 int adv_params ;
 int ble_init_adv_data (int ) ;
 int esp_ble_gap_config_local_privacy (int) ;
 int esp_ble_gap_start_advertising (int *) ;
 int esp_ble_gatts_add_char (int ,TYPE_28__*,int,int,int *,int *) ;
 int esp_ble_gatts_add_char_descr (int ,TYPE_27__*,int,int *,int *) ;
 int esp_ble_gatts_create_service (int ,TYPE_26__*,int ) ;
 int esp_ble_gatts_send_indicate (int ,int ,int ,int,int*,int) ;
 int esp_ble_gatts_send_response (int ,int ,int ,int,TYPE_17__*) ;
 int esp_ble_gatts_start_service (int ) ;
 int esp_log_buffer_hex (int ,int*,int) ;
 int example_exec_write_event_env (int *,TYPE_18__*) ;
 int example_write_event_env (int ,int *,TYPE_18__*) ;
 int gatts_initial_char_val ;
 TYPE_21__* gl_profile_tab ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_17__*,int ,int) ;

__attribute__((used)) static void gatts_profile_a_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param) {
    switch (event) {
    case 132:
        ESP_LOGI(BT_BLE_COEX_TAG, "REGISTER_APP_EVT, status %d, app_id %d\n", param->reg.status, param->reg.app_id);
        esp_ble_gap_config_local_privacy(1);
        gl_profile_tab[PROFILE_A_APP_ID].service_id.is_primary = 1;
        gl_profile_tab[PROFILE_A_APP_ID].service_id.id.inst_id = 0x00;
        gl_profile_tab[PROFILE_A_APP_ID].service_id.id.uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_A_APP_ID].service_id.id.uuid.uuid.uuid16 = GATTS_SERVICE_UUID_A;

        ble_init_adv_data(BLE_ADV_NAME);
        esp_ble_gatts_create_service(gatts_if, &gl_profile_tab[PROFILE_A_APP_ID].service_id, GATTS_NUM_HANDLE_A);
        break;
    case 133: {
        ESP_LOGI(BT_BLE_COEX_TAG, "GATT_READ_EVT, conn_id %d, trans_id %d, handle %d\n", param->read.conn_id, param->read.trans_id, param->read.handle);
        esp_gatt_rsp_t rsp;
        memset(&rsp, 0, sizeof(esp_gatt_rsp_t));
        rsp.attr_value.handle = param->read.handle;
        rsp.attr_value.len = 4;
        rsp.attr_value.value[0] = 0xde;
        rsp.attr_value.value[1] = 0xed;
        rsp.attr_value.value[2] = 0xbe;
        rsp.attr_value.value[3] = 0xef;
        esp_ble_gatts_send_response(gatts_if, param->read.conn_id, param->read.trans_id,
                                    ESP_GATT_OK, &rsp);
        break;
    }
    case 128: {
        ESP_LOGI(BT_BLE_COEX_TAG, "GATT_WRITE_EVT, conn_id %d, trans_id %d, handle %d", param->write.conn_id, param->write.trans_id, param->write.handle);
        if (!param->write.is_prep){
            ESP_LOGI(BT_BLE_COEX_TAG, "GATT_WRITE_EVT, value len %d, value :", param->write.len);
            esp_log_buffer_hex(BT_BLE_COEX_TAG, param->write.value, param->write.len);
            if (gl_profile_tab[PROFILE_A_APP_ID].descr_handle == param->write.handle && param->write.len == 2){
                uint16_t descr_value = param->write.value[1]<<8 | param->write.value[0];
                if (descr_value == 0x0001){
                    if (a_property & ESP_GATT_CHAR_PROP_BIT_NOTIFY){
                        ESP_LOGI(BT_BLE_COEX_TAG, "notify enable");
                        uint8_t notify_data[15];
                        for (int i = 0; i < sizeof(notify_data); ++i)
                        {
                            notify_data[i] = i%0xff;
                        }

                        esp_ble_gatts_send_indicate(gatts_if, param->write.conn_id, gl_profile_tab[PROFILE_A_APP_ID].char_handle,
                                                sizeof(notify_data), notify_data, 0);
                    }
                }else if (descr_value == 0x0002){
                    if (a_property & ESP_GATT_CHAR_PROP_BIT_INDICATE){
                        ESP_LOGI(BT_BLE_COEX_TAG, "indicate enable");
                        uint8_t indicate_data[15];
                        for (int i = 0; i < sizeof(indicate_data); ++i)
                        {
                            indicate_data[i] = i%0xff;
                        }

                        esp_ble_gatts_send_indicate(gatts_if, param->write.conn_id, gl_profile_tab[PROFILE_A_APP_ID].char_handle,
                                                sizeof(indicate_data), indicate_data, 1);
                    }
                }
                else if (descr_value == 0x0000){
                    ESP_LOGI(BT_BLE_COEX_TAG, "notify/indicate disable ");
                }else{
                    ESP_LOGE(BT_BLE_COEX_TAG, "unknown descr value");
                    esp_log_buffer_hex(BT_BLE_COEX_TAG, param->write.value, param->write.len);
                }

            }
        }
        example_write_event_env(gatts_if, &a_prepare_write_env, param);
        break;
    }
    case 137:
        ESP_LOGI(BT_BLE_COEX_TAG,"ESP_GATTS_EXEC_WRITE_EVT");
        esp_ble_gatts_send_response(gatts_if, param->write.conn_id, param->write.trans_id, ESP_GATT_OK, ((void*)0));
        example_exec_write_event_env(&a_prepare_write_env, param);
        break;
    case 135:
        ESP_LOGI(BT_BLE_COEX_TAG, "ESP_GATTS_MTU_EVT, MTU %d", param->mtu.mtu);
        break;
    case 129:
        break;
    case 140:
        ESP_LOGI(BT_BLE_COEX_TAG, "CREATE_SERVICE_EVT, status %d,  service_handle %d\n", param->create.status, param->create.service_handle);
        gl_profile_tab[PROFILE_A_APP_ID].service_handle = param->create.service_handle;
        gl_profile_tab[PROFILE_A_APP_ID].char_uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_A_APP_ID].char_uuid.uuid.uuid16 = GATTS_CHAR_UUID_A;

        esp_ble_gatts_start_service(gl_profile_tab[PROFILE_A_APP_ID].service_handle);
        a_property = ESP_GATT_CHAR_PROP_BIT_READ | ESP_GATT_CHAR_PROP_BIT_WRITE | ESP_GATT_CHAR_PROP_BIT_NOTIFY;
        esp_err_t add_char_ret = esp_ble_gatts_add_char(gl_profile_tab[PROFILE_A_APP_ID].service_handle, &gl_profile_tab[PROFILE_A_APP_ID].char_uuid,
                                                        ESP_GATT_PERM_READ | ESP_GATT_PERM_WRITE,
                                                        a_property,
                                                        &gatts_initial_char_val, ((void*)0));
        if (add_char_ret){
            ESP_LOGE(BT_BLE_COEX_TAG, "add char failed, error code = 0x%x",add_char_ret);
        }
        break;
    case 146:
        break;
    case 147: {
        ESP_LOGI(BT_BLE_COEX_TAG, "ADD_CHAR_EVT, status %d,  attr_handle %d, service_handle %d\n",
                param->add_char.status, param->add_char.attr_handle, param->add_char.service_handle);
        gl_profile_tab[PROFILE_A_APP_ID].char_handle = param->add_char.attr_handle;
        gl_profile_tab[PROFILE_A_APP_ID].descr_uuid.len = ESP_UUID_LEN_16;
        gl_profile_tab[PROFILE_A_APP_ID].descr_uuid.uuid.uuid16 = ESP_GATT_UUID_CHAR_CLIENT_CONFIG;
        esp_err_t add_descr_ret = esp_ble_gatts_add_char_descr(gl_profile_tab[PROFILE_A_APP_ID].service_handle, &gl_profile_tab[PROFILE_A_APP_ID].descr_uuid,
                                                                ESP_GATT_PERM_READ | ESP_GATT_PERM_WRITE, ((void*)0), ((void*)0));
        if (add_descr_ret){
            ESP_LOGE(BT_BLE_COEX_TAG, "add char descr failed, error code = 0x%x", add_descr_ret);
        }
        break;
    }
    case 148:
        gl_profile_tab[PROFILE_A_APP_ID].descr_handle = param->add_char_descr.attr_handle;
        ESP_LOGI(BT_BLE_COEX_TAG, "ADD_DESCR_EVT, status %d, attr_handle %d, service_handle %d\n",
                 param->add_char_descr.status, param->add_char_descr.attr_handle, param->add_char_descr.service_handle);
        break;
    case 139:
        break;
    case 131:
        ESP_LOGI(BT_BLE_COEX_TAG, "SERVICE_START_EVT, status %d, service_handle %d\n",
                 param->start.status, param->start.service_handle);
        break;
    case 130:
        break;
    case 141: {
        esp_ble_conn_update_params_t conn_params = {0};
        memcpy(conn_params.bda, param->connect.remote_bda, sizeof(esp_bd_addr_t));
        break;
    }
    case 138:
        ESP_LOGI(BT_BLE_COEX_TAG, "ESP_GATTS_DISCONNECT_EVT");
        esp_ble_gap_start_advertising(&adv_params);
        break;
    case 143:
        ESP_LOGI(BT_BLE_COEX_TAG, "ESP_GATTS_CONF_EVT, status %d", param->conf.status);
        if (param->conf.status != ESP_GATT_OK){
            esp_log_buffer_hex(BT_BLE_COEX_TAG, param->conf.value, param->conf.len);
        }
        break;
    case 134:
    case 145:
    case 144:
    case 136:
    case 142:
    default:
        break;
    }
}
