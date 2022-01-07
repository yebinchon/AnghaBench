
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ identifier; int data_length_code; int* data; } ;
typedef TYPE_1__ can_message_t ;


 int ESP_LOGI (int ,char*,...) ;
 int EXAMPLE_TAG ;
 scalar_t__ ID_MASTER_PING ;
 scalar_t__ ID_MASTER_START_CMD ;
 scalar_t__ ID_MASTER_STOP_CMD ;
 scalar_t__ ID_SLAVE_DATA ;
 scalar_t__ ID_SLAVE_PING_RESP ;
 scalar_t__ ID_SLAVE_STOP_RESP ;
 scalar_t__ NO_OF_ITERS ;
 int can_receive (TYPE_1__*,int ) ;
 int portMAX_DELAY ;
 int rx_sem ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void can_receive_task(void *arg)
{
    xSemaphoreTake(rx_sem, portMAX_DELAY);
    bool start_cmd = 0;
    bool stop_resp = 0;
    uint32_t iterations = 0;

    while (iterations < NO_OF_ITERS) {
        can_message_t rx_msg;
        can_receive(&rx_msg, portMAX_DELAY);
        if (rx_msg.identifier == ID_MASTER_PING) {
            ESP_LOGI(EXAMPLE_TAG, "Received master ping");
        } else if (rx_msg.identifier == ID_SLAVE_PING_RESP) {
            ESP_LOGI(EXAMPLE_TAG, "Received slave ping response");
        } else if (rx_msg.identifier == ID_MASTER_START_CMD) {
            ESP_LOGI(EXAMPLE_TAG, "Received master start command");
            start_cmd = 1;
        } else if (rx_msg.identifier == ID_SLAVE_DATA) {
            uint32_t data = 0;
            for (int i = 0; i < rx_msg.data_length_code; i++) {
                data |= (rx_msg.data[i] << (i * 8));
            }
            ESP_LOGI(EXAMPLE_TAG, "Received data value %d", data);
        } else if (rx_msg.identifier == ID_MASTER_STOP_CMD) {
            ESP_LOGI(EXAMPLE_TAG, "Received master stop command");
        } else if (rx_msg.identifier == ID_SLAVE_STOP_RESP) {
            ESP_LOGI(EXAMPLE_TAG, "Received slave stop response");
            stop_resp = 1;
        }
        if (start_cmd && stop_resp) {

            iterations++;
            start_cmd = 0;
            stop_resp = 0;
        }
    }

    xSemaphoreGive(rx_sem);
    vTaskDelete(((void*)0));
}
