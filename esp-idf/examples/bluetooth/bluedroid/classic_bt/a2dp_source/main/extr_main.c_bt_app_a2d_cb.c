
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_a2d_cb_param_t ;
typedef int esp_a2d_cb_event_t ;


 int bt_app_av_sm_hdlr ;
 int bt_app_work_dispatch (int ,int ,int *,int,int *) ;

__attribute__((used)) static void bt_app_a2d_cb(esp_a2d_cb_event_t event, esp_a2d_cb_param_t *param)
{
    bt_app_work_dispatch(bt_app_av_sm_hdlr, event, param, sizeof(esp_a2d_cb_param_t), ((void*)0));
}
