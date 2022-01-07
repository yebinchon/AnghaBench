
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_a2d_cb_param_t ;
typedef int esp_a2d_cb_event_t ;


 int BT_AV_TAG ;



 int ESP_LOGE (int ,char*,int) ;
 int bt_app_work_dispatch (int ,int,int *,int,int *) ;
 int bt_av_hdl_a2d_evt ;

void bt_app_a2d_cb(esp_a2d_cb_event_t event, esp_a2d_cb_param_t *param)
{
    switch (event) {
    case 128:
    case 129:
    case 130: {
        bt_app_work_dispatch(bt_av_hdl_a2d_evt, event, param, sizeof(esp_a2d_cb_param_t), ((void*)0));
        break;
    }
    default:
        ESP_LOGE(BT_AV_TAG, "Invalid A2DP event: %d", event);
        break;
    }
}
