
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int conn_handle; } ;
struct ble_gap_event {TYPE_1__ connect; } ;
typedef scalar_t__ esp_err_t ;
struct TYPE_8__ {TYPE_2__* pc_ble; } ;
struct TYPE_7__ {scalar_t__ (* new_transport_session ) (int ,int ) ;} ;
struct TYPE_6__ {int sec_inst; TYPE_3__* sec; } ;


 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 TYPE_4__* protoble_internal ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static void transport_simple_ble_connect(struct ble_gap_event *event, void *arg)
{
    esp_err_t ret;
    ESP_LOGD(TAG, "Inside BLE connect w/ conn_id - %d", event->connect.conn_handle);
    if (protoble_internal->pc_ble->sec &&
            protoble_internal->pc_ble->sec->new_transport_session) {
        ret =
            protoble_internal->pc_ble->sec->new_transport_session(protoble_internal->pc_ble->sec_inst, event->connect.conn_handle);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "error creating the session");
        }
    }
}
