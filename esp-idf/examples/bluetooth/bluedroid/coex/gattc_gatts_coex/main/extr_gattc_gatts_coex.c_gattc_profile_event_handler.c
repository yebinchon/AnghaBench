
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_20__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_18__ ;
typedef struct TYPE_34__ TYPE_17__ ;
typedef struct TYPE_33__ TYPE_16__ ;
typedef struct TYPE_32__ TYPE_15__ ;
typedef struct TYPE_31__ TYPE_14__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int write_char_data ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int notify_en ;
typedef int esp_gattc_descr_elem_t ;
struct TYPE_40__ {int uuid16; } ;
struct TYPE_41__ {TYPE_4__ uuid; int len; } ;
struct TYPE_34__ {int properties; int handle; TYPE_5__ uuid; int char_handle; } ;
typedef TYPE_17__ esp_gattc_char_elem_t ;
typedef int esp_gattc_cb_event_t ;
typedef int esp_gatt_status_t ;
typedef int esp_gatt_if_t ;
typedef int esp_err_t ;
struct TYPE_45__ {int reason; } ;
struct TYPE_44__ {int status; } ;
struct TYPE_43__ {int remote_bda; } ;
struct TYPE_42__ {int value_len; int value; int is_notify; } ;
struct TYPE_39__ {int handle; int status; } ;
struct TYPE_38__ {int conn_id; int searched_service_source; int status; } ;
struct TYPE_36__ {int uuid16; } ;
struct TYPE_32__ {TYPE_1__ uuid; int len; } ;
struct TYPE_33__ {TYPE_15__ uuid; int inst_id; } ;
struct TYPE_31__ {TYPE_16__ srvc_id; int end_handle; int start_handle; int is_primary; int conn_id; } ;
struct TYPE_30__ {int conn_id; int mtu; int status; } ;
struct TYPE_29__ {int conn_id; int status; } ;
struct TYPE_28__ {int status; } ;
struct TYPE_27__ {int conn_id; int remote_bda; } ;
struct TYPE_35__ {TYPE_9__ disconnect; TYPE_8__ write; TYPE_7__ srvc_chg; TYPE_6__ notify; TYPE_3__ reg_for_notify; TYPE_2__ search_cmpl; TYPE_14__ search_res; TYPE_13__ cfg_mtu; TYPE_12__ dis_srvc_cmpl; TYPE_11__ open; TYPE_10__ connect; } ;
typedef TYPE_18__ esp_ble_gattc_cb_param_t ;
typedef int esp_bd_addr_t ;
struct TYPE_37__ {int char_handle; int conn_id; int service_end_handle; int service_start_handle; int remote_bda; } ;


 int COEX_TAG ;
 int ESP_GATT_AUTH_REQ_NONE ;
 int ESP_GATT_CHAR_PROP_BIT_NOTIFY ;
 int ESP_GATT_DB_CHARACTERISTIC ;
 int ESP_GATT_DB_DESCRIPTOR ;
 int ESP_GATT_OK ;
 int ESP_GATT_SERVICE_FROM_NVS_FLASH ;
 int ESP_GATT_SERVICE_FROM_REMOTE_DEVICE ;
 int ESP_GATT_UUID_CHAR_CLIENT_CONFIG ;
 int ESP_GATT_WRITE_TYPE_RSP ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_UUID_LEN_16 ;
 size_t GATTC_PROFILE_C_APP_ID ;
 int INVALID_HANDLE ;
 int REMOTE_SERVICE_UUID ;
 int ble_scan_params ;
 TYPE_17__* char_elem_result ;
 int connect ;
 TYPE_17__* descr_elem_result ;
 int esp_ble_gap_set_scan_params (int *) ;
 int esp_ble_gattc_get_attr_count (int ,int ,int ,int ,int ,int ,int*) ;
 int esp_ble_gattc_get_char_by_uuid (int ,int ,int ,int ,int ,TYPE_17__*,int*) ;
 int esp_ble_gattc_get_descr_by_char_handle (int ,int ,int ,int ,TYPE_17__*,int*) ;
 int esp_ble_gattc_register_for_notify (int ,int ,int ) ;
 int esp_ble_gattc_search_service (int ,int ,int *) ;
 int esp_ble_gattc_send_mtu_req (int ,int ) ;
 int esp_ble_gattc_write_char (int ,int ,int ,int,int*,int ,int ) ;
 int esp_ble_gattc_write_char_descr (int ,int ,int ,int,int*,int ,int ) ;
 int esp_log_buffer_hex (int ,int ,int) ;
 int free (TYPE_17__*) ;
 TYPE_20__* gattc_profile_tab ;
 int get_server ;
 TYPE_17__* malloc (int) ;
 int memcpy (int ,int ,int) ;
 int notify_descr_uuid ;
 int remote_filter_char_uuid ;
 int remote_filter_service_uuid ;

__attribute__((used)) static void gattc_profile_event_handler(esp_gattc_cb_event_t event, esp_gatt_if_t gattc_if, esp_ble_gattc_cb_param_t *param)
{
    esp_ble_gattc_cb_param_t *p_data = (esp_ble_gattc_cb_param_t *)param;

    switch (event) {
    case 134:
        ESP_LOGI(COEX_TAG, "REG_EVT\n");
        esp_err_t scan_ret = esp_ble_gap_set_scan_params(&ble_scan_params);
        if (scan_ret) {
            ESP_LOGE(COEX_TAG, "set scan params error, error code = %x", scan_ret);
        }
        break;
    case 139: {
        ESP_LOGI(COEX_TAG, "ESP_GATTC_CONNECT_EVT conn_id %d, if %d\n", p_data->connect.conn_id, gattc_if);
        gattc_profile_tab[GATTC_PROFILE_C_APP_ID].conn_id = p_data->connect.conn_id;
        memcpy(gattc_profile_tab[GATTC_PROFILE_C_APP_ID].remote_bda, p_data->connect.remote_bda, sizeof(esp_bd_addr_t));
        ESP_LOGI(COEX_TAG, "REMOTE BDA:");
        esp_log_buffer_hex(COEX_TAG, gattc_profile_tab[GATTC_PROFILE_C_APP_ID].remote_bda, sizeof(esp_bd_addr_t));
        esp_err_t mtu_ret = esp_ble_gattc_send_mtu_req (gattc_if, p_data->connect.conn_id);
        if (mtu_ret) {
            ESP_LOGE(COEX_TAG, "config MTU error, error code = %x\n", mtu_ret);
        }
        break;
    }
    case 135:
        if (param->open.status != ESP_GATT_OK) {
            ESP_LOGE(COEX_TAG, "open failed, status %d\n", p_data->open.status);
            break;
        }
        ESP_LOGI(COEX_TAG, "open success\n");
        break;
    case 137:
        if (param->dis_srvc_cmpl.status != ESP_GATT_OK) {
            ESP_LOGE(COEX_TAG, "discover service failed, status %d\n", param->dis_srvc_cmpl.status);
            break;
        }
        ESP_LOGI(COEX_TAG, "discover service complete conn_id %d\n", param->dis_srvc_cmpl.conn_id);
        esp_ble_gattc_search_service(gattc_if, param->cfg_mtu.conn_id, &remote_filter_service_uuid);
        break;
    case 140:
        if (param->cfg_mtu.status != ESP_GATT_OK) {
            ESP_LOGE(COEX_TAG,"config mtu failed, error status = %x\n", param->cfg_mtu.status);
        }
        ESP_LOGI(COEX_TAG, "ESP_GATTC_CFG_MTU_EVT, Status %d, MTU %d, conn_id %d\n", param->cfg_mtu.status, param->cfg_mtu.mtu, param->cfg_mtu.conn_id);
        break;
    case 131: {
        ESP_LOGI(COEX_TAG, "SEARCH RES: conn_id = %x is primary service %d\n", p_data->search_res.conn_id, p_data->search_res.is_primary);
        ESP_LOGI(COEX_TAG, "start handle %d end handle %d current handle value %d\n", p_data->search_res.start_handle, p_data->search_res.end_handle, p_data->search_res.srvc_id.inst_id);
        if (p_data->search_res.srvc_id.uuid.len == ESP_UUID_LEN_16 && p_data->search_res.srvc_id.uuid.uuid.uuid16 == REMOTE_SERVICE_UUID) {
            ESP_LOGI(COEX_TAG, "service found\n");
            get_server = 1;
            gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_start_handle = p_data->search_res.start_handle;
            gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_end_handle = p_data->search_res.end_handle;
            ESP_LOGI(COEX_TAG, "UUID16: %x\n", p_data->search_res.srvc_id.uuid.uuid.uuid16);
        }
        break;
    }
    case 132:
        if (p_data->search_cmpl.status != ESP_GATT_OK) {
            ESP_LOGE(COEX_TAG, "search service failed, error status = %x\n", p_data->search_cmpl.status);
            break;
        }
        if(p_data->search_cmpl.searched_service_source == ESP_GATT_SERVICE_FROM_REMOTE_DEVICE) {
            ESP_LOGI(COEX_TAG, "Get service information from remote device\n");
        } else if (p_data->search_cmpl.searched_service_source == ESP_GATT_SERVICE_FROM_NVS_FLASH) {
            ESP_LOGI(COEX_TAG, "Get service information from flash\n");
        } else {
            ESP_LOGI(COEX_TAG, "unknown service source\n");
        }
        ESP_LOGI(COEX_TAG, "ESP_GATTC_SEARCH_CMPL_EVT\n");
        if (get_server) {
            uint16_t count = 0;
            esp_gatt_status_t status = esp_ble_gattc_get_attr_count( gattc_if,
                                                                     p_data->search_cmpl.conn_id,
                                                                     ESP_GATT_DB_CHARACTERISTIC,
                                                                     gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_start_handle,
                                                                     gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_end_handle,
                                                                     INVALID_HANDLE,
                                                                     &count);
            if (status != ESP_GATT_OK) {
                ESP_LOGE(COEX_TAG, "esp_ble_gattc_get_attr_count error\n");
            }

            if (count > 0) {
                char_elem_result = (esp_gattc_char_elem_t *)malloc(sizeof(esp_gattc_char_elem_t) * count);
                if (!char_elem_result) {
                    ESP_LOGE(COEX_TAG, "gattc no mem\n");
                }else {
                    status = esp_ble_gattc_get_char_by_uuid( gattc_if,
                                                             p_data->search_cmpl.conn_id,
                                                             gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_start_handle,
                                                             gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_end_handle,
                                                             remote_filter_char_uuid,
                                                             char_elem_result,
                                                             &count);
                    if (status != ESP_GATT_OK) {
                        ESP_LOGE(COEX_TAG, "esp_ble_gattc_get_char_by_uuid error\n");
                    }


                    if (count > 0 && (char_elem_result[0].properties & ESP_GATT_CHAR_PROP_BIT_NOTIFY)) {
                        gattc_profile_tab[GATTC_PROFILE_C_APP_ID].char_handle = char_elem_result[0].char_handle;
                        esp_ble_gattc_register_for_notify (gattc_if, gattc_profile_tab[GATTC_PROFILE_C_APP_ID].remote_bda, char_elem_result[0].char_handle);
                    }
                }

                free(char_elem_result);
            } else {
                ESP_LOGE(COEX_TAG, "no char found\n");
            }
        }
         break;
    case 133: {
        ESP_LOGI(COEX_TAG, "ESP_GATTC_REG_FOR_NOTIFY_EVT\n");
        if (p_data->reg_for_notify.status != ESP_GATT_OK) {
            ESP_LOGE(COEX_TAG, "REG FOR NOTIFY failed: error status = %d\n", p_data->reg_for_notify.status);
        } else {
            uint16_t count = 0;
            uint16_t notify_en = 1;
            esp_gatt_status_t ret_status = esp_ble_gattc_get_attr_count( gattc_if,
                                                                         gattc_profile_tab[GATTC_PROFILE_C_APP_ID].conn_id,
                                                                         ESP_GATT_DB_DESCRIPTOR,
                                                                         gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_start_handle,
                                                                         gattc_profile_tab[GATTC_PROFILE_C_APP_ID].service_end_handle,
                                                                         gattc_profile_tab[GATTC_PROFILE_C_APP_ID].char_handle,
                                                                         &count);
            if (ret_status != ESP_GATT_OK) {
                ESP_LOGE(COEX_TAG, "esp_ble_gattc_get_attr_count error\n");
            }
            if (count > 0) {
                descr_elem_result = malloc(sizeof(esp_gattc_descr_elem_t) * count);
                if (!descr_elem_result) {
                    ESP_LOGE(COEX_TAG, "malloc error, gattc no mem\n");
                } else {
                    ret_status = esp_ble_gattc_get_descr_by_char_handle( gattc_if,
                                                                         gattc_profile_tab[GATTC_PROFILE_C_APP_ID].conn_id,
                                                                         p_data->reg_for_notify.handle,
                                                                         notify_descr_uuid,
                                                                         descr_elem_result,
                                                                         &count);
                    if (ret_status != ESP_GATT_OK) {
                        ESP_LOGE(COEX_TAG, "esp_ble_gattc_get_descr_by_char_handle error\n");
                    }

                    if (count > 0 && descr_elem_result[0].uuid.len == ESP_UUID_LEN_16 && descr_elem_result[0].uuid.uuid.uuid16 == ESP_GATT_UUID_CHAR_CLIENT_CONFIG) {
                        ret_status = esp_ble_gattc_write_char_descr( gattc_if,
                                                                     gattc_profile_tab[GATTC_PROFILE_C_APP_ID].conn_id,
                                                                     descr_elem_result[0].handle,
                                                                     sizeof(notify_en),
                                                                     (uint8_t *)&notify_en,
                                                                     ESP_GATT_WRITE_TYPE_RSP,
                                                                     ESP_GATT_AUTH_REQ_NONE);
                    }

                    if (ret_status != ESP_GATT_OK) {
                        ESP_LOGE(COEX_TAG, "esp_ble_gattc_write_char_descr error\n");
                    }


                    free(descr_elem_result);
                }
            } else {
                ESP_LOGE(COEX_TAG, "decsr not found\n");
            }

        }
        break;
    }
    case 136:
        if (p_data->notify.is_notify) {
            ESP_LOGI(COEX_TAG, "ESP_GATTC_NOTIFY_EVT, receive notify value:");
        } else {
            ESP_LOGI(COEX_TAG, "ESP_GATTC_NOTIFY_EVT, receive indicate value:");
        }
        esp_log_buffer_hex(COEX_TAG, p_data->notify.value, p_data->notify.value_len);
        break;
    case 128:
        if (p_data->write.status != ESP_GATT_OK) {
            ESP_LOGE(COEX_TAG, "write descr failed, error status = %x\n", p_data->write.status);
            break;
        }
        ESP_LOGI(COEX_TAG, "write descr success \n");
        uint8_t write_char_data[35];
        for (int i = 0; i < sizeof(write_char_data); ++ i) {
            write_char_data[i] = i % 256;
        }
        esp_ble_gattc_write_char( gattc_if,
                                  gattc_profile_tab[GATTC_PROFILE_C_APP_ID].conn_id,
                                  gattc_profile_tab[GATTC_PROFILE_C_APP_ID].char_handle,
                                  sizeof(write_char_data),
                                  write_char_data,
                                  ESP_GATT_WRITE_TYPE_RSP,
                                  ESP_GATT_AUTH_REQ_NONE);
        break;
    case 130: {
        esp_bd_addr_t bda;
        memcpy(bda, p_data->srvc_chg.remote_bda, sizeof(esp_bd_addr_t));
        ESP_LOGI(COEX_TAG, "ESP_GATTC_SRVC_CHG_EVT, bd_addr:");
        esp_log_buffer_hex(COEX_TAG, bda, sizeof(esp_bd_addr_t));
        break;
    }
    case 129:
        if (p_data->write.status != ESP_GATT_OK) {
            ESP_LOGE(COEX_TAG, "write char failed, error status = %x\n", p_data->write.status);
            break;
        }
        ESP_LOGI(COEX_TAG, "write char success \n");
        break;
    case 138: {
        connect = 0;
        get_server = 0;
        ESP_LOGI(COEX_TAG, "ESP_GATTC_DISCONNECT_EVT, reason = %d\n", p_data->disconnect.reason);
        break;
    }
    default:
        break;
    }
}
