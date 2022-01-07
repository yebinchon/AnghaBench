
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int status; int cmd; } ;
struct TYPE_4__ {TYPE_1__ media_ctrl_stat; } ;
typedef TYPE_2__ esp_a2d_cb_param_t ;






 int APP_AV_STATE_DISCONNECTING ;
 int BT_APP_HEART_BEAT_EVT ;
 int BT_AV_TAG ;
 int ESP_A2D_MEDIA_CTRL_ACK_EVT ;
 int ESP_A2D_MEDIA_CTRL_ACK_SUCCESS ;
 int ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY ;
 int ESP_A2D_MEDIA_CTRL_START ;
 int ESP_A2D_MEDIA_CTRL_STOP ;
 int ESP_LOGI (int ,char*) ;
 int esp_a2d_media_ctrl (int ) ;
 int esp_a2d_source_disconnect (int ) ;
 int s_a2d_state ;
 int s_intv_cnt ;
 int s_media_state ;
 int s_peer_bda ;

__attribute__((used)) static void bt_app_av_media_proc(uint16_t event, void *param)
{
    esp_a2d_cb_param_t *a2d = ((void*)0);
    switch (s_media_state) {
    case 131: {
        if (event == BT_APP_HEART_BEAT_EVT) {
            ESP_LOGI(BT_AV_TAG, "a2dp media ready checking ...");
            esp_a2d_media_ctrl(ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY);
        } else if (event == ESP_A2D_MEDIA_CTRL_ACK_EVT) {
            a2d = (esp_a2d_cb_param_t *)(param);
            if (a2d->media_ctrl_stat.cmd == ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY &&
                    a2d->media_ctrl_stat.status == ESP_A2D_MEDIA_CTRL_ACK_SUCCESS) {
                ESP_LOGI(BT_AV_TAG, "a2dp media ready, starting ...");
                esp_a2d_media_ctrl(ESP_A2D_MEDIA_CTRL_START);
                s_media_state = 129;
            }
        }
        break;
    }
    case 129: {
        if (event == ESP_A2D_MEDIA_CTRL_ACK_EVT) {
            a2d = (esp_a2d_cb_param_t *)(param);
            if (a2d->media_ctrl_stat.cmd == ESP_A2D_MEDIA_CTRL_START &&
                    a2d->media_ctrl_stat.status == ESP_A2D_MEDIA_CTRL_ACK_SUCCESS) {
                ESP_LOGI(BT_AV_TAG, "a2dp media start successfully.");
                s_intv_cnt = 0;
                s_media_state = 130;
            } else {

                ESP_LOGI(BT_AV_TAG, "a2dp media start failed.");
                s_media_state = 131;
            }
        }
        break;
    }
    case 130: {
        if (event == BT_APP_HEART_BEAT_EVT) {
            if (++s_intv_cnt >= 10) {
                ESP_LOGI(BT_AV_TAG, "a2dp media stopping...");
                esp_a2d_media_ctrl(ESP_A2D_MEDIA_CTRL_STOP);
                s_media_state = 128;
                s_intv_cnt = 0;
            }
        }
        break;
    }
    case 128: {
        if (event == ESP_A2D_MEDIA_CTRL_ACK_EVT) {
            a2d = (esp_a2d_cb_param_t *)(param);
            if (a2d->media_ctrl_stat.cmd == ESP_A2D_MEDIA_CTRL_STOP &&
                    a2d->media_ctrl_stat.status == ESP_A2D_MEDIA_CTRL_ACK_SUCCESS) {
                ESP_LOGI(BT_AV_TAG, "a2dp media stopped successfully, disconnecting...");
                s_media_state = 131;
                esp_a2d_source_disconnect(s_peer_bda);
                s_a2d_state = APP_AV_STATE_DISCONNECTING;
            } else {
                ESP_LOGI(BT_AV_TAG, "a2dp media stopping...");
                esp_a2d_media_ctrl(ESP_A2D_MEDIA_CTRL_STOP);
            }
        }
        break;
    }
    }
}
