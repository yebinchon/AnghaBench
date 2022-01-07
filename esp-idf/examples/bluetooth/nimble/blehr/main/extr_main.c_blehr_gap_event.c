
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {char* conn_handle; int value; } ;
struct TYPE_7__ {char* cur_notify; int attr_handle; } ;
struct TYPE_6__ {int reason; } ;
struct TYPE_5__ {int conn_handle; int status; } ;
struct ble_gap_event {int type; TYPE_4__ mtu; TYPE_3__ subscribe; TYPE_2__ disconnect; TYPE_1__ connect; } ;







 int ESP_LOGI (char*,char*,int ) ;
 int INFO ;
 int MODLOG_DFLT (int ,char*,...) ;
 int blehr_advertise () ;
 int blehr_tx_hrate_reset () ;
 int blehr_tx_hrate_stop () ;
 int conn_handle ;
 int hrs_hrm_handle ;
 char* notify_state ;

__attribute__((used)) static int
blehr_gap_event(struct ble_gap_event *event, void *arg)
{
    switch (event->type) {
    case 131:

        MODLOG_DFLT(INFO, "connection %s; status=%d\n",
                    event->connect.status == 0 ? "established" : "failed",
                    event->connect.status);

        if (event->connect.status != 0) {

            blehr_advertise();
        }
        conn_handle = event->connect.conn_handle;
        break;

    case 130:
        MODLOG_DFLT(INFO, "disconnect; reason=%d\n", event->disconnect.reason);


        blehr_advertise();
        break;

    case 132:
        MODLOG_DFLT(INFO, "adv complete\n");
        blehr_advertise();
        break;

    case 128:
        MODLOG_DFLT(INFO, "subscribe event; cur_notify=%d\n value handle; "
                    "val_handle=%d\n",
                    event->subscribe.cur_notify, hrs_hrm_handle);
        if (event->subscribe.attr_handle == hrs_hrm_handle) {
            notify_state = event->subscribe.cur_notify;
            blehr_tx_hrate_reset();
        } else if (event->subscribe.attr_handle != hrs_hrm_handle) {
            notify_state = event->subscribe.cur_notify;
            blehr_tx_hrate_stop();
        }
        ESP_LOGI("BLE_GAP_SUBSCRIBE_EVENT", "conn_handle from subscribe=%d", conn_handle);
        break;

    case 129:
        MODLOG_DFLT(INFO, "mtu update event; conn_handle=%d mtu=%d\n",
                    event->mtu.conn_handle,
                    event->mtu.value);
        break;

    }

    return 0;
}
