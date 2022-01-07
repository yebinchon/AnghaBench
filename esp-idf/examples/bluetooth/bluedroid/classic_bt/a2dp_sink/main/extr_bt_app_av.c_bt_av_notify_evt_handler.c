
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int play_pos; int playback; } ;
typedef TYPE_1__ esp_avrc_rn_param_t ;


 int BT_AV_TAG ;



 int ESP_LOGI (int ,char*,int ) ;
 int bt_av_new_track () ;
 int bt_av_play_pos_changed () ;
 int bt_av_playback_changed () ;

void bt_av_notify_evt_handler(uint8_t event_id, esp_avrc_rn_param_t *event_parameter)
{
    switch (event_id) {
    case 128:
        bt_av_new_track();
        break;
    case 129:
        ESP_LOGI(BT_AV_TAG, "Playback status changed: 0x%x", event_parameter->playback);
        bt_av_playback_changed();
        break;
    case 130:
        ESP_LOGI(BT_AV_TAG, "Play position changed: %d-ms", event_parameter->play_pos);
        bt_av_play_pos_changed();
        break;
    }
}
