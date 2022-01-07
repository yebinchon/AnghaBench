
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tx_task_action_t ;


 int ESP_LOGI (int ,char*) ;
 int EXAMPLE_TAG ;
 int PING_PERIOD_MS ;
 scalar_t__ TX_SEND_PINGS ;
 scalar_t__ TX_SEND_START_CMD ;
 scalar_t__ TX_SEND_STOP_CMD ;
 scalar_t__ TX_TASK_EXIT ;
 int can_transmit (int *,int ) ;
 int pdMS_TO_TICKS (int ) ;
 scalar_t__ pdTRUE ;
 int ping_message ;
 int portMAX_DELAY ;
 int start_message ;
 int stop_message ;
 int stop_ping_sem ;
 int tx_task_queue ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 int xQueueReceive (int ,scalar_t__*,int ) ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void can_transmit_task(void *arg)
{
    while (1) {
        tx_task_action_t action;
        xQueueReceive(tx_task_queue, &action, portMAX_DELAY);

        if (action == TX_SEND_PINGS) {

            ESP_LOGI(EXAMPLE_TAG, "Transmitting ping");
            while (xSemaphoreTake(stop_ping_sem, 0) != pdTRUE) {
                can_transmit(&ping_message, portMAX_DELAY);
                vTaskDelay(pdMS_TO_TICKS(PING_PERIOD_MS));
            }
        } else if (action == TX_SEND_START_CMD) {

            can_transmit(&start_message, portMAX_DELAY);
            ESP_LOGI(EXAMPLE_TAG, "Transmitted start command");
        } else if (action == TX_SEND_STOP_CMD) {

            can_transmit(&stop_message, portMAX_DELAY);
            ESP_LOGI(EXAMPLE_TAG, "Transmitted stop command");
        } else if (action == TX_TASK_EXIT) {
            break;
        }
    }
    vTaskDelete(((void*)0));
}
