
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_gatts_cb_event_t ;
typedef int esp_gatt_if_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_7__ {int conn_id; } ;
struct TYPE_10__ {TYPE_1__ connect; } ;
typedef TYPE_4__ esp_ble_gatts_cb_param_t ;
struct TYPE_11__ {TYPE_2__* pc_ble; } ;
struct TYPE_9__ {scalar_t__ (* new_transport_session ) (int ,int ) ;} ;
struct TYPE_8__ {int sec_inst; TYPE_3__* sec; } ;


 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 TYPE_6__* protoble_internal ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static void transport_simple_ble_connect(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    esp_err_t ret;
    ESP_LOGD(TAG, "Inside BLE connect w/ conn_id - %d", param->connect.conn_id);
    if (protoble_internal->pc_ble->sec &&
        protoble_internal->pc_ble->sec->new_transport_session) {
        ret = protoble_internal->pc_ble->sec->new_transport_session(protoble_internal->pc_ble->sec_inst,
                                                                    param->connect.conn_id);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "error creating the session");
        }
    }
}
