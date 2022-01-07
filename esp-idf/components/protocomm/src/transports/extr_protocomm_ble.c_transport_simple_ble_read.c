
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int esp_gatts_cb_event_t ;
typedef scalar_t__ esp_gatt_status_t ;
struct TYPE_8__ {int offset; scalar_t__ len; int value; int auth_req; int handle; } ;
struct TYPE_10__ {TYPE_1__ attr_value; int member_0; } ;
typedef TYPE_3__ esp_gatt_rsp_t ;
typedef int esp_gatt_if_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_9__ {int offset; int trans_id; int conn_id; int handle; } ;
struct TYPE_11__ {TYPE_2__ read; } ;
typedef TYPE_4__ esp_ble_gatts_cb_param_t ;
struct TYPE_12__ {scalar_t__ gatt_mtu; } ;


 int ESP_GATT_AUTH_REQ_NONE ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int TAG ;
 scalar_t__ esp_ble_gatts_get_attr_value (int ,scalar_t__*,int const**) ;
 scalar_t__ esp_ble_gatts_send_response (int ,int ,int ,scalar_t__,TYPE_3__*) ;
 int memcpy (int ,int const*,scalar_t__) ;
 TYPE_6__* protoble_internal ;

__attribute__((used)) static void transport_simple_ble_read(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    static const uint8_t *read_buf = ((void*)0);
    static uint16_t read_len = 0;
    esp_gatt_status_t status = ESP_OK;

    ESP_LOGD(TAG, "Inside read w/ session - %d on param %d %d",
             param->read.conn_id, param->read.handle, read_len);
    if (!read_len) {
        ESP_LOGD(TAG, "Reading attr value first time");
        status = esp_ble_gatts_get_attr_value(param->read.handle, &read_len, &read_buf);
    } else {
        ESP_LOGD(TAG, "Subsequent read request for attr value");
    }

    esp_gatt_rsp_t gatt_rsp = {0};
    gatt_rsp.attr_value.len = MIN(read_len, (protoble_internal->gatt_mtu - 1));
    gatt_rsp.attr_value.handle = param->read.handle;
    gatt_rsp.attr_value.offset = param->read.offset;
    gatt_rsp.attr_value.auth_req = ESP_GATT_AUTH_REQ_NONE;
    if (gatt_rsp.attr_value.len && read_buf) {
        memcpy(gatt_rsp.attr_value.value,
                read_buf + param->read.offset,
                gatt_rsp.attr_value.len);
    }
    read_len -= gatt_rsp.attr_value.len;
    esp_err_t err = esp_ble_gatts_send_response(gatts_if, param->read.conn_id,
                                                param->read.trans_id, status, &gatt_rsp);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Send response error in read");
    }
}
