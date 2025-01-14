
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_avrc_ct_cb_param_t ;
typedef int esp_avrc_ct_cb_event_t ;


 int BT_RC_CT_TAG ;






 int ESP_LOGE (int ,char*,int) ;
 int bt_app_alloc_meta_buffer (int *) ;
 int bt_app_work_dispatch (int ,int,int *,int,int *) ;
 int bt_av_hdl_avrc_ct_evt ;

void bt_app_rc_ct_cb(esp_avrc_ct_cb_event_t event, esp_avrc_ct_cb_param_t *param)
{
    switch (event) {
    case 130:
        bt_app_alloc_meta_buffer(param);

    case 132:
    case 129:
    case 133:
    case 128:
    case 131: {
        bt_app_work_dispatch(bt_av_hdl_avrc_ct_evt, event, param, sizeof(esp_avrc_ct_cb_param_t), ((void*)0));
        break;
    }
    default:
        ESP_LOGE(BT_RC_CT_TAG, "Invalid AVRC event: %d", event);
        break;
    }
}
