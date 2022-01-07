
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flow_control_msg_t ;
typedef int esp_err_t ;
typedef scalar_t__ BaseType_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int FLOW_CONTROL_QUEUE_LENGTH ;
 int TAG ;
 int eth2wifi_flow_control_task ;
 int flow_control_queue ;
 scalar_t__ pdTRUE ;
 scalar_t__ tskIDLE_PRIORITY ;
 int xQueueCreate (int ,int) ;
 scalar_t__ xTaskCreate (int ,char*,int,int *,scalar_t__,int *) ;

__attribute__((used)) static esp_err_t initialize_flow_control(void)
{
    flow_control_queue = xQueueCreate(FLOW_CONTROL_QUEUE_LENGTH, sizeof(flow_control_msg_t));
    if (!flow_control_queue) {
        ESP_LOGE(TAG, "create flow control queue failed");
        return ESP_FAIL;
    }
    BaseType_t ret = xTaskCreate(eth2wifi_flow_control_task, "flow_ctl", 2048, ((void*)0), (tskIDLE_PRIORITY + 2), ((void*)0));
    if (ret != pdTRUE) {
        ESP_LOGE(TAG, "create flow control task failed");
        return ESP_FAIL;
    }
    return ESP_OK;
}
