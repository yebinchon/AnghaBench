
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_spp_cb_param_t ;
typedef int esp_spp_cb_event_t ;


 int esp_spp_cb ;
 int spp_task_work_dispatch (int ,int ,int *,int,int *) ;

__attribute__((used)) static void esp_spp_stack_cb(esp_spp_cb_event_t event, esp_spp_cb_param_t *param)
{
    spp_task_work_dispatch(esp_spp_cb, event, param, sizeof(esp_spp_cb_param_t), ((void*)0));
}
