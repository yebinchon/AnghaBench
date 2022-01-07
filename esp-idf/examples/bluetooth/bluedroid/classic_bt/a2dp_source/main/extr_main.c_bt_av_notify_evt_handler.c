
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int volume; } ;
typedef TYPE_1__ esp_avrc_rn_param_t ;


 int APP_RC_CT_TL_RN_VOLUME_CHANGE ;
 int BT_RC_CT_TAG ;

 int ESP_LOGI (int ,char*,int ) ;
 int bt_av_volume_changed () ;
 int esp_avrc_ct_send_set_absolute_volume_cmd (int ,int ) ;

void bt_av_notify_evt_handler(uint8_t event_id, esp_avrc_rn_param_t *event_parameter)
{
    switch (event_id) {
    case 128:
        ESP_LOGI(BT_RC_CT_TAG, "Volume changed: %d", event_parameter->volume);
        ESP_LOGI(BT_RC_CT_TAG, "Set absolute volume: volume %d", event_parameter->volume + 5);
        esp_avrc_ct_send_set_absolute_volume_cmd(APP_RC_CT_TL_RN_VOLUME_CHANGE, event_parameter->volume + 5);
        bt_av_volume_changed();
        break;
    }
}
