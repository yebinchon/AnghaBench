
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
typedef int esp_gatts_cb_event_t ;
typedef int esp_gatt_if_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_6__ {int conn_id; int trans_id; int handle; int len; int value; scalar_t__ is_prep; } ;
struct TYPE_7__ {TYPE_1__ write; } ;
typedef TYPE_2__ esp_ble_gatts_cb_param_t ;
struct TYPE_8__ {int pc_ble; } ;


 int ESP_GATT_OK ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int esp_ble_gatts_close (int ,int ) ;
 scalar_t__ esp_ble_gatts_send_response (int ,int ,int ,int ,int *) ;
 scalar_t__ esp_ble_gatts_set_attr_value (int ,int ,int *) ;
 int free (int *) ;
 int handle_to_handler (int ) ;
 int hexdump (char*,int *,int ) ;
 scalar_t__ prepare_write_event_env (int ,TYPE_2__*) ;
 TYPE_4__* protoble_internal ;
 scalar_t__ protocomm_req_handle (int ,int ,int ,int ,int ,int **,int *) ;

__attribute__((used)) static void transport_simple_ble_write(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    uint8_t *outbuf = ((void*)0);
    ssize_t outlen = 0;
    esp_err_t ret;

    ESP_LOGD(TAG, "Inside write with session - %d on attr handle = %d \nlen = %d, is_prep = %d",
             param->write.conn_id, param->write.handle, param->write.len, param->write.is_prep);

    if (param->write.is_prep) {
        ret = prepare_write_event_env(gatts_if, param);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Error appending to prepare buffer");
        }
        return;
    } else {
        ESP_LOGD(TAG, "is_prep not set");
    }

    ret = protocomm_req_handle(protoble_internal->pc_ble,
                               handle_to_handler(param->write.handle),
                               param->write.conn_id,
                               param->write.value,
                               param->write.len,
                               &outbuf, &outlen);
    if (ret == ESP_OK) {
        ret = esp_ble_gatts_set_attr_value(param->write.handle, outlen, outbuf);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to set the session attribute value");
        }
        ret = esp_ble_gatts_send_response(gatts_if, param->write.conn_id,
                                          param->write.trans_id, ESP_GATT_OK, ((void*)0));
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Send response error in write");
        }
        hexdump("Response from  write", outbuf, outlen);

    } else {
        ESP_LOGE(TAG, "Invalid content received, killing connection");
        esp_ble_gatts_close(gatts_if, param->write.conn_id);
    }
    if (outbuf) {
        free(outbuf);
    }
}
