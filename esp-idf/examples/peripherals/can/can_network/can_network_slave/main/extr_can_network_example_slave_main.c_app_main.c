
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tx_task_action_t ;
typedef int rx_task_action_t ;


 int CTRL_TSK_PRIO ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int EXAMPLE_TAG ;
 int RX_TASK_PRIO ;
 int TX_TASK_PRIO ;
 int can_control_task ;
 int can_driver_install (int *,int *,int *) ;
 int can_driver_uninstall () ;
 int can_receive_task ;
 int can_transmit_task ;
 int ctrl_task_sem ;
 int done_sem ;
 int f_config ;
 int g_config ;
 int pdMS_TO_TICKS (int) ;
 int portMAX_DELAY ;
 int printf (char*,int) ;
 int rx_task_queue ;
 int stop_data_sem ;
 int t_config ;
 int tskNO_AFFINITY ;
 int tx_task_queue ;
 int vQueueDelete (int ) ;
 int vSemaphoreDelete (int ) ;
 int vTaskDelay (int ) ;
 int xQueueCreate (int,int) ;
 int xSemaphoreCreateBinary () ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;
 int xTaskCreatePinnedToCore (int ,char*,int,int *,int ,int *,int ) ;

void app_main(void)
{

    for (int i = 3; i > 0; i--) {
        printf("Slave starting in %d\n", i);
        vTaskDelay(pdMS_TO_TICKS(1000));
    }



    tx_task_queue = xQueueCreate(1, sizeof(tx_task_action_t));
    rx_task_queue = xQueueCreate(1, sizeof(rx_task_action_t));
    ctrl_task_sem = xSemaphoreCreateBinary();
    stop_data_sem = xSemaphoreCreateBinary();;
    done_sem = xSemaphoreCreateBinary();;
    xTaskCreatePinnedToCore(can_receive_task, "CAN_rx", 4096, ((void*)0), RX_TASK_PRIO, ((void*)0), tskNO_AFFINITY);
    xTaskCreatePinnedToCore(can_transmit_task, "CAN_tx", 4096, ((void*)0), TX_TASK_PRIO, ((void*)0), tskNO_AFFINITY);
    xTaskCreatePinnedToCore(can_control_task, "CAN_ctrl", 4096, ((void*)0), CTRL_TSK_PRIO, ((void*)0), tskNO_AFFINITY);


    ESP_ERROR_CHECK(can_driver_install(&g_config, &t_config, &f_config));
    ESP_LOGI(EXAMPLE_TAG, "Driver installed");

    xSemaphoreGive(ctrl_task_sem);
    xSemaphoreTake(done_sem, portMAX_DELAY);


    ESP_ERROR_CHECK(can_driver_uninstall());
    ESP_LOGI(EXAMPLE_TAG, "Driver uninstalled");


    vSemaphoreDelete(ctrl_task_sem);
    vSemaphoreDelete(stop_data_sem);
    vSemaphoreDelete(done_sem);
    vQueueDelete(tx_task_queue);
    vQueueDelete(rx_task_queue);
}
