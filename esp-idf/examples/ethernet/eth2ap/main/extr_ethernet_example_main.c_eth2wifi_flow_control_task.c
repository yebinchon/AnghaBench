
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int packet; scalar_t__ length; } ;
typedef TYPE_1__ flow_control_msg_t ;


 int ESP_IF_WIFI_AP ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 scalar_t__ FLOW_CONTROL_QUEUE_TIMEOUT_MS ;
 scalar_t__ FLOW_CONTROL_WIFI_SEND_TIMEOUT_MS ;
 int TAG ;
 int esp_wifi_internal_tx (int ,int ,scalar_t__) ;
 int flow_control_queue ;
 int free (int ) ;
 int pdMS_TO_TICKS (scalar_t__) ;
 scalar_t__ pdTRUE ;
 scalar_t__ s_sta_is_connected ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueReceive (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void eth2wifi_flow_control_task(void *args)
{
    flow_control_msg_t msg;
    int res = 0;
    uint32_t timeout = 0;
    while (1) {
        if (xQueueReceive(flow_control_queue, &msg, pdMS_TO_TICKS(FLOW_CONTROL_QUEUE_TIMEOUT_MS)) == pdTRUE) {
            timeout = 0;
            if (s_sta_is_connected && msg.length) {
                do {
                    vTaskDelay(pdMS_TO_TICKS(timeout));
                    timeout += 2;
                    res = esp_wifi_internal_tx(ESP_IF_WIFI_AP, msg.packet, msg.length);
                } while (res && timeout < FLOW_CONTROL_WIFI_SEND_TIMEOUT_MS);
                if (res != ESP_OK) {
                    ESP_LOGE(TAG, "WiFi send packet failed: %d", res);
                }
            }
            free(msg.packet);
        }
    }
    vTaskDelete(((void*)0));
}
