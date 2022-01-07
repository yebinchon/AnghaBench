
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int conn_handle; } ;
struct TYPE_7__ {TYPE_1__ conn; } ;
struct ble_gap_event {TYPE_2__ disconnect; } ;
typedef scalar_t__ esp_err_t ;
struct TYPE_10__ {int gatt_mtu; TYPE_3__* pc_ble; } ;
struct TYPE_9__ {scalar_t__ (* close_transport_session ) (int ,int ) ;} ;
struct TYPE_8__ {int sec_inst; TYPE_4__* sec; } ;


 int BLE_ATT_MTU_DFLT ;
 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 TYPE_5__* protoble_internal ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static void transport_simple_ble_disconnect(struct ble_gap_event *event, void *arg)
{
    esp_err_t ret;
    ESP_LOGD(TAG, "Inside disconnect w/ session - %d",
             event->disconnect.conn.conn_handle);
    if (protoble_internal->pc_ble->sec &&
            protoble_internal->pc_ble->sec->close_transport_session) {
        ret =
            protoble_internal->pc_ble->sec->close_transport_session(protoble_internal->pc_ble->sec_inst, event->disconnect.conn.conn_handle);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "error closing the session after disconnect");
        }
    }
    protoble_internal->gatt_mtu = BLE_ATT_MTU_DFLT;
}
