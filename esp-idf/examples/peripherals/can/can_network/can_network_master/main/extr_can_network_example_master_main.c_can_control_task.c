
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tx_task_action_t ;
typedef int rx_task_action_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int EXAMPLE_TAG ;
 int ITER_DELAY_MS ;
 int NO_OF_ITERS ;
 int RX_RECEIVE_DATA ;
 int RX_RECEIVE_PING_RESP ;
 int RX_RECEIVE_STOP_RESP ;
 int RX_TASK_EXIT ;
 int TX_SEND_PINGS ;
 int TX_SEND_START_CMD ;
 int TX_SEND_STOP_CMD ;
 int TX_TASK_EXIT ;
 int can_start () ;
 int can_stop () ;
 int ctrl_task_sem ;
 int done_sem ;
 int pdMS_TO_TICKS (int ) ;
 int portMAX_DELAY ;
 int rx_task_queue ;
 int tx_task_queue ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 int xQueueSend (int ,int *,int ) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void can_control_task(void *arg)
{
    xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
    tx_task_action_t tx_action;
    rx_task_action_t rx_action;

    for (int iter = 0; iter < NO_OF_ITERS; iter++) {
        ESP_ERROR_CHECK(can_start());
        ESP_LOGI(EXAMPLE_TAG, "Driver started");


        tx_action = TX_SEND_PINGS;
        rx_action = RX_RECEIVE_PING_RESP;
        xQueueSend(tx_task_queue, &tx_action, portMAX_DELAY);
        xQueueSend(rx_task_queue, &rx_action, portMAX_DELAY);


        xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
        tx_action = TX_SEND_START_CMD;
        rx_action = RX_RECEIVE_DATA;
        xQueueSend(tx_task_queue, &tx_action, portMAX_DELAY);
        xQueueSend(rx_task_queue, &rx_action, portMAX_DELAY);


        xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
        tx_action = TX_SEND_STOP_CMD;
        rx_action = RX_RECEIVE_STOP_RESP;
        xQueueSend(tx_task_queue, &tx_action, portMAX_DELAY);
        xQueueSend(rx_task_queue, &rx_action, portMAX_DELAY);

        xSemaphoreTake(ctrl_task_sem, portMAX_DELAY);
        ESP_ERROR_CHECK(can_stop());
        ESP_LOGI(EXAMPLE_TAG, "Driver stopped");
        vTaskDelay(pdMS_TO_TICKS(ITER_DELAY_MS));
    }

    tx_action = TX_TASK_EXIT;
    rx_action = RX_TASK_EXIT;
    xQueueSend(tx_task_queue, &tx_action, portMAX_DELAY);
    xQueueSend(rx_task_queue, &rx_action, portMAX_DELAY);


    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
