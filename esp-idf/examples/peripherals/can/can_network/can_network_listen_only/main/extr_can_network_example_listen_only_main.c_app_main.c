
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int EXAMPLE_TAG ;
 int RX_TASK_PRIO ;
 int can_driver_install (int *,int *,int *) ;
 int can_driver_uninstall () ;
 int can_receive_task ;
 int can_start () ;
 int can_stop () ;
 int f_config ;
 int g_config ;
 int pdMS_TO_TICKS (int) ;
 int portMAX_DELAY ;
 int rx_sem ;
 int t_config ;
 int tskNO_AFFINITY ;
 int vSemaphoreDelete (int ) ;
 int vTaskDelay (int ) ;
 int xSemaphoreCreateBinary () ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;
 int xTaskCreatePinnedToCore (int ,char*,int,int *,int ,int *,int ) ;

void app_main(void)
{
    rx_sem = xSemaphoreCreateBinary();
    xTaskCreatePinnedToCore(can_receive_task, "CAN_rx", 4096, ((void*)0), RX_TASK_PRIO, ((void*)0), tskNO_AFFINITY);


    ESP_ERROR_CHECK(can_driver_install(&g_config, &t_config, &f_config));
    ESP_LOGI(EXAMPLE_TAG, "Driver installed");
    ESP_ERROR_CHECK(can_start());
    ESP_LOGI(EXAMPLE_TAG, "Driver started");

    xSemaphoreGive(rx_sem);
    vTaskDelay(pdMS_TO_TICKS(100));
    xSemaphoreTake(rx_sem, portMAX_DELAY);


    ESP_ERROR_CHECK(can_stop());
    ESP_LOGI(EXAMPLE_TAG, "Driver stopped");
    ESP_ERROR_CHECK(can_driver_uninstall());
    ESP_LOGI(EXAMPLE_TAG, "Driver uninstalled");


    vSemaphoreDelete(rx_sem);
}
