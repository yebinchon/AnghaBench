
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int value; int channel_id; int conn_handle; } ;
struct TYPE_4__ {int reason; } ;
struct TYPE_6__ {int conn_handle; int status; } ;
struct ble_gap_event {int type; TYPE_2__ mtu; TYPE_1__ disconnect; TYPE_3__ connect; } ;
struct ble_gap_conn_desc {int dummy; } ;






 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int ,int ,int ) ;
 int TAG ;
 int ble_gap_conn_find (int ,struct ble_gap_conn_desc*) ;
 int simple_ble_advertise () ;
 int transport_simple_ble_connect (struct ble_gap_event*,void*) ;
 int transport_simple_ble_disconnect (struct ble_gap_event*,void*) ;
 int transport_simple_ble_set_mtu (struct ble_gap_event*,void*) ;

__attribute__((used)) static int
simple_ble_gap_event(struct ble_gap_event *event, void *arg)
{
    struct ble_gap_conn_desc desc;
    int rc;

    switch (event->type) {
    case 130:

        if (event->connect.status == 0) {
            transport_simple_ble_connect(event, arg);
            rc = ble_gap_conn_find(event->connect.conn_handle, &desc);
            if (rc != 0) {
                ESP_LOGE(TAG, "No open connection with the specified handle");
                return rc;
            }
        } else {

            simple_ble_advertise();
        }
        return 0;

    case 129:
        ESP_LOGD(TAG, "disconnect; reason=%d ", event->disconnect.reason);
        transport_simple_ble_disconnect(event, arg);


        simple_ble_advertise();
        return 0;

    case 131:
        simple_ble_advertise();
        return 0;

    case 128:
        ESP_LOGI(TAG, "mtu update event; conn_handle=%d cid=%d mtu=%d\n",
                 event->mtu.conn_handle,
                 event->mtu.channel_id,
                 event->mtu.value);
        transport_simple_ble_set_mtu(event, arg);
        return 0;
    }
    return 0;
}
