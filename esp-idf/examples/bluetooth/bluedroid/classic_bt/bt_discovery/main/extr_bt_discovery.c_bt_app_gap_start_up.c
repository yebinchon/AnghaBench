
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__ app_gap_cb_t ;


 int APP_GAP_STATE_DEVICE_DISCOVERING ;
 int ESP_BT_CONNECTABLE ;
 int ESP_BT_GENERAL_DISCOVERABLE ;
 int ESP_BT_INQ_MODE_GENERAL_INQUIRY ;
 int bt_app_gap_cb ;
 int esp_bt_dev_set_device_name (char*) ;
 int esp_bt_gap_register_callback (int ) ;
 int esp_bt_gap_set_scan_mode (int ,int ) ;
 int esp_bt_gap_start_discovery (int ,int,int ) ;
 TYPE_1__ m_dev_info ;
 int memset (TYPE_1__*,int ,int) ;

void bt_app_gap_start_up(void)
{
    char *dev_name = "ESP_GAP_INQRUIY";
    esp_bt_dev_set_device_name(dev_name);


    esp_bt_gap_set_scan_mode(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);


    esp_bt_gap_register_callback(bt_app_gap_cb);


    app_gap_cb_t *p_dev = &m_dev_info;
    memset(p_dev, 0, sizeof(app_gap_cb_t));


    p_dev->state = APP_GAP_STATE_DEVICE_DISCOVERING;
    esp_bt_gap_start_discovery(ESP_BT_INQ_MODE_GENERAL_INQUIRY, 10, 0);
}
