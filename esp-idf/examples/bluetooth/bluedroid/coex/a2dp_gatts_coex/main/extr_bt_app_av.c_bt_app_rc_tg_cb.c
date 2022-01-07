
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_avrc_tg_cb_param_t ;
typedef int esp_avrc_tg_cb_event_t ;


 int BT_RC_TG_TAG ;





 int ESP_LOGE (int ,char*,int) ;
 int bt_app_work_dispatch (int ,int,int *,int,int *) ;
 int bt_av_hdl_avrc_tg_evt ;

void bt_app_rc_tg_cb(esp_avrc_tg_cb_event_t event, esp_avrc_tg_cb_param_t *param)
{
    switch (event) {
    case 132:
    case 129:
    case 131:
    case 128:
    case 130:
        bt_app_work_dispatch(bt_av_hdl_avrc_tg_evt, event, param, sizeof(esp_avrc_tg_cb_param_t), ((void*)0));
        break;
    default:
        ESP_LOGE(BT_RC_TG_TAG, "Invalid AVRC event: %d", event);
        break;
    }
}
