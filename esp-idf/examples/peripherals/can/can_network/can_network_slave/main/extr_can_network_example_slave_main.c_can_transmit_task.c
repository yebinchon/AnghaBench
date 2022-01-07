
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ tx_task_action_t ;
struct TYPE_5__ {int* data; } ;


 int DATA_PERIOD_MS ;
 int ESP_LOGI (int ,char*,...) ;
 int EXAMPLE_TAG ;
 scalar_t__ TX_SEND_DATA ;
 scalar_t__ TX_SEND_PING_RESP ;
 scalar_t__ TX_SEND_STOP_RESP ;
 scalar_t__ TX_TASK_EXIT ;
 int can_transmit (TYPE_1__*,int ) ;
 int ctrl_task_sem ;
 TYPE_1__ data_message ;
 int pdMS_TO_TICKS (int ) ;
 scalar_t__ pdTRUE ;
 TYPE_1__ ping_resp ;
 int portMAX_DELAY ;
 int stop_data_sem ;
 TYPE_1__ stop_resp ;
 int tx_task_queue ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 int xQueueReceive (int ,scalar_t__*,int ) ;
 int xSemaphoreGive (int ) ;
 scalar_t__ xSemaphoreTake (int ,int ) ;
 int xTaskGetTickCount () ;

__attribute__((used)) static void can_transmit_task(void *arg)
{
    while (1) {
        tx_task_action_t action;
        xQueueReceive(tx_task_queue, &action, portMAX_DELAY);

        if (action == TX_SEND_PING_RESP) {

            can_transmit(&ping_resp, portMAX_DELAY);
            ESP_LOGI(EXAMPLE_TAG, "Transmitted ping response");
            xSemaphoreGive(ctrl_task_sem);
        } else if (action == TX_SEND_DATA) {

            ESP_LOGI(EXAMPLE_TAG, "Start transmitting data");
            while (1) {

                uint32_t sensor_data = xTaskGetTickCount();
                for (int i = 0; i < 4; i++) {
                    data_message.data[i] = (sensor_data >> (i * 8)) & 0xFF;
                }
                can_transmit(&data_message, portMAX_DELAY);
                ESP_LOGI(EXAMPLE_TAG, "Transmitted data value %d", sensor_data);
                vTaskDelay(pdMS_TO_TICKS(DATA_PERIOD_MS));
                if (xSemaphoreTake(stop_data_sem, 0) == pdTRUE) {
                    break;
                }
            }
        } else if (action == TX_SEND_STOP_RESP) {

            can_transmit(&stop_resp, portMAX_DELAY);
            ESP_LOGI(EXAMPLE_TAG, "Transmitted stop response");
            xSemaphoreGive(ctrl_task_sem);
        } else if (action == TX_TASK_EXIT) {
            break;
        }
    }
    vTaskDelete(((void*)0));
}
