
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int length; int * packet; } ;
typedef TYPE_1__ flow_control_msg_t ;
typedef int esp_eth_handle_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int FLOW_CONTROL_QUEUE_TIMEOUT_MS ;
 int TAG ;
 int flow_control_queue ;
 int free (int *) ;
 int pdMS_TO_TICKS (int ) ;
 scalar_t__ pdTRUE ;
 scalar_t__ xQueueSend (int ,TYPE_1__*,int ) ;

__attribute__((used)) static esp_err_t pkt_eth2wifi(esp_eth_handle_t eth_handle, uint8_t *buffer, uint32_t len)
{
    esp_err_t ret = ESP_OK;
    flow_control_msg_t msg = {
        .packet = buffer,
        .length = len
    };
    if (xQueueSend(flow_control_queue, &msg, pdMS_TO_TICKS(FLOW_CONTROL_QUEUE_TIMEOUT_MS)) != pdTRUE) {
        ESP_LOGE(TAG, "send flow control message failed or timeout");
        free(buffer);
        ret = ESP_FAIL;
    }
    return ret;
}
