#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_9__ ;
typedef  struct TYPE_44__   TYPE_8__ ;
typedef  struct TYPE_43__   TYPE_7__ ;
typedef  struct TYPE_42__   TYPE_6__ ;
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_20__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_18__ ;
typedef  struct TYPE_34__   TYPE_17__ ;
typedef  struct TYPE_33__   TYPE_16__ ;
typedef  struct TYPE_32__   TYPE_15__ ;
typedef  struct TYPE_31__   TYPE_14__ ;
typedef  struct TYPE_30__   TYPE_13__ ;
typedef  struct TYPE_29__   TYPE_12__ ;
typedef  struct TYPE_28__   TYPE_11__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  write_char_data ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  notify_en ;
typedef  int /*<<< orphan*/  esp_gattc_descr_elem_t ;
struct TYPE_40__ {int /*<<< orphan*/  uuid16; } ;
struct TYPE_41__ {TYPE_4__ uuid; int /*<<< orphan*/  len; } ;
struct TYPE_34__ {int properties; int /*<<< orphan*/  handle; TYPE_5__ uuid; int /*<<< orphan*/  char_handle; } ;
typedef  TYPE_17__ esp_gattc_char_elem_t ;
typedef  int esp_gattc_cb_event_t ;
typedef  int /*<<< orphan*/  esp_gatt_status_t ;
typedef  int /*<<< orphan*/  esp_gatt_if_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_45__ {int /*<<< orphan*/  reason; } ;
struct TYPE_44__ {int /*<<< orphan*/  status; } ;
struct TYPE_43__ {int /*<<< orphan*/  remote_bda; } ;
struct TYPE_42__ {int value_len; int /*<<< orphan*/  value; int /*<<< orphan*/  is_notify; } ;
struct TYPE_39__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  status; } ;
struct TYPE_38__ {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  searched_service_source; int /*<<< orphan*/  status; } ;
struct TYPE_36__ {int /*<<< orphan*/  uuid16; } ;
struct TYPE_32__ {TYPE_1__ uuid; int /*<<< orphan*/  len; } ;
struct TYPE_33__ {TYPE_15__ uuid; int /*<<< orphan*/  inst_id; } ;
struct TYPE_31__ {TYPE_16__ srvc_id; int /*<<< orphan*/  end_handle; int /*<<< orphan*/  start_handle; int /*<<< orphan*/  is_primary; int /*<<< orphan*/  conn_id; } ;
struct TYPE_30__ {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  mtu; int /*<<< orphan*/  status; } ;
struct TYPE_29__ {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  status; } ;
struct TYPE_28__ {int /*<<< orphan*/  status; } ;
struct TYPE_27__ {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  remote_bda; } ;
struct TYPE_35__ {TYPE_9__ disconnect; TYPE_8__ write; TYPE_7__ srvc_chg; TYPE_6__ notify; TYPE_3__ reg_for_notify; TYPE_2__ search_cmpl; TYPE_14__ search_res; TYPE_13__ cfg_mtu; TYPE_12__ dis_srvc_cmpl; TYPE_11__ open; TYPE_10__ connect; } ;
typedef  TYPE_18__ esp_ble_gattc_cb_param_t ;
typedef  int /*<<< orphan*/  esp_bd_addr_t ;
struct TYPE_37__ {int /*<<< orphan*/  char_handle; int /*<<< orphan*/  conn_id; int /*<<< orphan*/  service_end_handle; int /*<<< orphan*/  service_start_handle; int /*<<< orphan*/  remote_bda; } ;

/* Variables and functions */
#define  ESP_GATTC_CFG_MTU_EVT 140 
#define  ESP_GATTC_CONNECT_EVT 139 
#define  ESP_GATTC_DISCONNECT_EVT 138 
#define  ESP_GATTC_DIS_SRVC_CMPL_EVT 137 
#define  ESP_GATTC_NOTIFY_EVT 136 
#define  ESP_GATTC_OPEN_EVT 135 
#define  ESP_GATTC_REG_EVT 134 
#define  ESP_GATTC_REG_FOR_NOTIFY_EVT 133 
#define  ESP_GATTC_SEARCH_CMPL_EVT 132 
#define  ESP_GATTC_SEARCH_RES_EVT 131 
#define  ESP_GATTC_SRVC_CHG_EVT 130 
#define  ESP_GATTC_WRITE_CHAR_EVT 129 
#define  ESP_GATTC_WRITE_DESCR_EVT 128 
 int /*<<< orphan*/  ESP_GATT_AUTH_REQ_NONE ; 
 int ESP_GATT_CHAR_PROP_BIT_NOTIFY ; 
 int /*<<< orphan*/  ESP_GATT_DB_CHARACTERISTIC ; 
 int /*<<< orphan*/  ESP_GATT_DB_DESCRIPTOR ; 
 int /*<<< orphan*/  ESP_GATT_OK ; 
 int /*<<< orphan*/  ESP_GATT_SERVICE_FROM_NVS_FLASH ; 
 int /*<<< orphan*/  ESP_GATT_SERVICE_FROM_REMOTE_DEVICE ; 
 int /*<<< orphan*/  ESP_GATT_UUID_CHAR_CLIENT_CONFIG ; 
 int /*<<< orphan*/  ESP_GATT_WRITE_TYPE_RSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_UUID_LEN_16 ; 
 int /*<<< orphan*/  GATTC_TAG ; 
 int /*<<< orphan*/  INVALID_HANDLE ; 
 size_t PROFILE_A_APP_ID ; 
 int /*<<< orphan*/  REMOTE_SERVICE_UUID ; 
 int /*<<< orphan*/  ble_scan_params ; 
 TYPE_17__* char_elem_result ; 
 int connect ; 
 TYPE_17__* descr_elem_result ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_17__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_17__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_17__*) ; 
 int get_server ; 
 TYPE_20__* gl_profile_tab ; 
 TYPE_17__* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  notify_descr_uuid ; 
 int /*<<< orphan*/  remote_filter_char_uuid ; 
 int /*<<< orphan*/  remote_filter_service_uuid ; 

__attribute__((used)) static void FUNC15(esp_gattc_cb_event_t event, esp_gatt_if_t gattc_if, esp_ble_gattc_cb_param_t *param)
{
    esp_ble_gattc_cb_param_t *p_data = (esp_ble_gattc_cb_param_t *)param;

    switch (event) {
    case ESP_GATTC_REG_EVT:
        FUNC1(GATTC_TAG, "REG_EVT");
        esp_err_t scan_ret = FUNC2(&ble_scan_params);
        if (scan_ret){
            FUNC0(GATTC_TAG, "set scan params error, error code = %x", scan_ret);
        }
        break;
    case ESP_GATTC_CONNECT_EVT:{
        FUNC1(GATTC_TAG, "ESP_GATTC_CONNECT_EVT conn_id %d, if %d", p_data->connect.conn_id, gattc_if);
        gl_profile_tab[PROFILE_A_APP_ID].conn_id = p_data->connect.conn_id;
        FUNC14(gl_profile_tab[PROFILE_A_APP_ID].remote_bda, p_data->connect.remote_bda, sizeof(esp_bd_addr_t));
        FUNC1(GATTC_TAG, "REMOTE BDA:");
        FUNC11(GATTC_TAG, gl_profile_tab[PROFILE_A_APP_ID].remote_bda, sizeof(esp_bd_addr_t));
        esp_err_t mtu_ret = FUNC8 (gattc_if, p_data->connect.conn_id);
        if (mtu_ret){
            FUNC0(GATTC_TAG, "config MTU error, error code = %x", mtu_ret);
        }
        break;
    }
    case ESP_GATTC_OPEN_EVT:
        if (param->open.status != ESP_GATT_OK){
            FUNC0(GATTC_TAG, "open failed, status %d", p_data->open.status);
            break;
        }
        FUNC1(GATTC_TAG, "open success");
        break;
    case ESP_GATTC_DIS_SRVC_CMPL_EVT:
        if (param->dis_srvc_cmpl.status != ESP_GATT_OK){
            FUNC0(GATTC_TAG, "discover service failed, status %d", param->dis_srvc_cmpl.status);
            break;
        }
        FUNC1(GATTC_TAG, "discover service complete conn_id %d", param->dis_srvc_cmpl.conn_id);
        FUNC7(gattc_if, param->cfg_mtu.conn_id, &remote_filter_service_uuid);
        break;
    case ESP_GATTC_CFG_MTU_EVT:
        if (param->cfg_mtu.status != ESP_GATT_OK){
            FUNC0(GATTC_TAG,"config mtu failed, error status = %x", param->cfg_mtu.status);
        }
        FUNC1(GATTC_TAG, "ESP_GATTC_CFG_MTU_EVT, Status %d, MTU %d, conn_id %d", param->cfg_mtu.status, param->cfg_mtu.mtu, param->cfg_mtu.conn_id);
        break;
    case ESP_GATTC_SEARCH_RES_EVT: {
        FUNC1(GATTC_TAG, "SEARCH RES: conn_id = %x is primary service %d", p_data->search_res.conn_id, p_data->search_res.is_primary);
        FUNC1(GATTC_TAG, "start handle %d end handle %d current handle value %d", p_data->search_res.start_handle, p_data->search_res.end_handle, p_data->search_res.srvc_id.inst_id);
        if (p_data->search_res.srvc_id.uuid.len == ESP_UUID_LEN_16 && p_data->search_res.srvc_id.uuid.uuid.uuid16 == REMOTE_SERVICE_UUID) {
            FUNC1(GATTC_TAG, "service found");
            get_server = true;
            gl_profile_tab[PROFILE_A_APP_ID].service_start_handle = p_data->search_res.start_handle;
            gl_profile_tab[PROFILE_A_APP_ID].service_end_handle = p_data->search_res.end_handle;
            FUNC1(GATTC_TAG, "UUID16: %x", p_data->search_res.srvc_id.uuid.uuid.uuid16);
        }
        break;
    }
    case ESP_GATTC_SEARCH_CMPL_EVT:
        if (p_data->search_cmpl.status != ESP_GATT_OK){
            FUNC0(GATTC_TAG, "search service failed, error status = %x", p_data->search_cmpl.status);
            break;
        }
        if(p_data->search_cmpl.searched_service_source == ESP_GATT_SERVICE_FROM_REMOTE_DEVICE) {
            FUNC1(GATTC_TAG, "Get service information from remote device");
        } else if (p_data->search_cmpl.searched_service_source == ESP_GATT_SERVICE_FROM_NVS_FLASH) {
            FUNC1(GATTC_TAG, "Get service information from flash");
        } else {
            FUNC1(GATTC_TAG, "unknown service source");
        }
        FUNC1(GATTC_TAG, "ESP_GATTC_SEARCH_CMPL_EVT");
        if (get_server){
            uint16_t count = 0;
            esp_gatt_status_t status = FUNC3( gattc_if,
                                                                     p_data->search_cmpl.conn_id,
                                                                     ESP_GATT_DB_CHARACTERISTIC,
                                                                     gl_profile_tab[PROFILE_A_APP_ID].service_start_handle,
                                                                     gl_profile_tab[PROFILE_A_APP_ID].service_end_handle,
                                                                     INVALID_HANDLE,
                                                                     &count);
            if (status != ESP_GATT_OK){
                FUNC0(GATTC_TAG, "esp_ble_gattc_get_attr_count error");
            }

            if (count > 0){
                char_elem_result = (esp_gattc_char_elem_t *)FUNC13(sizeof(esp_gattc_char_elem_t) * count);
                if (!char_elem_result){
                    FUNC0(GATTC_TAG, "gattc no mem");
                }else{
                    status = FUNC4( gattc_if,
                                                             p_data->search_cmpl.conn_id,
                                                             gl_profile_tab[PROFILE_A_APP_ID].service_start_handle,
                                                             gl_profile_tab[PROFILE_A_APP_ID].service_end_handle,
                                                             remote_filter_char_uuid,
                                                             char_elem_result,
                                                             &count);
                    if (status != ESP_GATT_OK){
                        FUNC0(GATTC_TAG, "esp_ble_gattc_get_char_by_uuid error");
                    }

                    /*  Every service have only one char in our 'ESP_GATTS_DEMO' demo, so we used first 'char_elem_result' */
                    if (count > 0 && (char_elem_result[0].properties & ESP_GATT_CHAR_PROP_BIT_NOTIFY)){
                        gl_profile_tab[PROFILE_A_APP_ID].char_handle = char_elem_result[0].char_handle;
                        FUNC6 (gattc_if, gl_profile_tab[PROFILE_A_APP_ID].remote_bda, char_elem_result[0].char_handle);
                    }
                }
                /* free char_elem_result */
                FUNC12(char_elem_result);
            }else{
                FUNC0(GATTC_TAG, "no char found");
            }
        }
         break;
    case ESP_GATTC_REG_FOR_NOTIFY_EVT: {
        FUNC1(GATTC_TAG, "ESP_GATTC_REG_FOR_NOTIFY_EVT");
        if (p_data->reg_for_notify.status != ESP_GATT_OK){
            FUNC0(GATTC_TAG, "REG FOR NOTIFY failed: error status = %d", p_data->reg_for_notify.status);
        }else{
            uint16_t count = 0;
            uint16_t notify_en = 1;
            esp_gatt_status_t ret_status = FUNC3( gattc_if,
                                                                         gl_profile_tab[PROFILE_A_APP_ID].conn_id,
                                                                         ESP_GATT_DB_DESCRIPTOR,
                                                                         gl_profile_tab[PROFILE_A_APP_ID].service_start_handle,
                                                                         gl_profile_tab[PROFILE_A_APP_ID].service_end_handle,
                                                                         gl_profile_tab[PROFILE_A_APP_ID].char_handle,
                                                                         &count);
            if (ret_status != ESP_GATT_OK){
                FUNC0(GATTC_TAG, "esp_ble_gattc_get_attr_count error");
            }
            if (count > 0){
                descr_elem_result = FUNC13(sizeof(esp_gattc_descr_elem_t) * count);
                if (!descr_elem_result){
                    FUNC0(GATTC_TAG, "malloc error, gattc no mem");
                }else{
                    ret_status = FUNC5( gattc_if,
                                                                         gl_profile_tab[PROFILE_A_APP_ID].conn_id,
                                                                         p_data->reg_for_notify.handle,
                                                                         notify_descr_uuid,
                                                                         descr_elem_result,
                                                                         &count);
                    if (ret_status != ESP_GATT_OK){
                        FUNC0(GATTC_TAG, "esp_ble_gattc_get_descr_by_char_handle error");
                    }
                    /* Every char has only one descriptor in our 'ESP_GATTS_DEMO' demo, so we used first 'descr_elem_result' */
                    if (count > 0 && descr_elem_result[0].uuid.len == ESP_UUID_LEN_16 && descr_elem_result[0].uuid.uuid.uuid16 == ESP_GATT_UUID_CHAR_CLIENT_CONFIG){
                        ret_status = FUNC10( gattc_if,
                                                                     gl_profile_tab[PROFILE_A_APP_ID].conn_id,
                                                                     descr_elem_result[0].handle,
                                                                     sizeof(notify_en),
                                                                     (uint8_t *)&notify_en,
                                                                     ESP_GATT_WRITE_TYPE_RSP,
                                                                     ESP_GATT_AUTH_REQ_NONE);
                    }

                    if (ret_status != ESP_GATT_OK){
                        FUNC0(GATTC_TAG, "esp_ble_gattc_write_char_descr error");
                    }

                    /* free descr_elem_result */
                    FUNC12(descr_elem_result);
                }
            }
            else{
                FUNC0(GATTC_TAG, "decsr not found");
            }

        }
        break;
    }
    case ESP_GATTC_NOTIFY_EVT:
        if (p_data->notify.is_notify){
            FUNC1(GATTC_TAG, "ESP_GATTC_NOTIFY_EVT, receive notify value:");
        }else{
            FUNC1(GATTC_TAG, "ESP_GATTC_NOTIFY_EVT, receive indicate value:");
        }
        FUNC11(GATTC_TAG, p_data->notify.value, p_data->notify.value_len);
        break;
    case ESP_GATTC_WRITE_DESCR_EVT:
        if (p_data->write.status != ESP_GATT_OK){
            FUNC0(GATTC_TAG, "write descr failed, error status = %x", p_data->write.status);
            break;
        }
        FUNC1(GATTC_TAG, "write descr success ");
        uint8_t write_char_data[35];
        for (int i = 0; i < sizeof(write_char_data); ++i)
        {
            write_char_data[i] = i % 256;
        }
        FUNC9( gattc_if,
                                  gl_profile_tab[PROFILE_A_APP_ID].conn_id,
                                  gl_profile_tab[PROFILE_A_APP_ID].char_handle,
                                  sizeof(write_char_data),
                                  write_char_data,
                                  ESP_GATT_WRITE_TYPE_RSP,
                                  ESP_GATT_AUTH_REQ_NONE);
        break;
    case ESP_GATTC_SRVC_CHG_EVT: {
        esp_bd_addr_t bda;
        FUNC14(bda, p_data->srvc_chg.remote_bda, sizeof(esp_bd_addr_t));
        FUNC1(GATTC_TAG, "ESP_GATTC_SRVC_CHG_EVT, bd_addr:");
        FUNC11(GATTC_TAG, bda, sizeof(esp_bd_addr_t));
        break;
    }
    case ESP_GATTC_WRITE_CHAR_EVT:
        if (p_data->write.status != ESP_GATT_OK){
            FUNC0(GATTC_TAG, "write char failed, error status = %x", p_data->write.status);
            break;
        }
        FUNC1(GATTC_TAG, "write char success ");
        break;
    case ESP_GATTC_DISCONNECT_EVT:
        connect = false;
        get_server = false;
        FUNC1(GATTC_TAG, "ESP_GATTC_DISCONNECT_EVT, reason = %d", p_data->disconnect.reason);
        break;
    default:
        break;
    }
}