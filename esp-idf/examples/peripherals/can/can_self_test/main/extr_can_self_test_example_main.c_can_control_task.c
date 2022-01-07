
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int EXAMPLE_TAG ;
 int NO_OF_ITERS ;
 int can_start () ;
 int can_stop () ;
 int ctrl_sem ;
 int done_sem ;
 int pdMS_TO_TICKS (int) ;
 int portMAX_DELAY ;
 int rx_sem ;
 int tx_sem ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void can_control_task(void *arg)
{
    xSemaphoreTake(ctrl_sem, portMAX_DELAY);
    for (int iter = 0; iter < NO_OF_ITERS; iter++) {

        ESP_ERROR_CHECK(can_start());
        ESP_LOGI(EXAMPLE_TAG, "Driver started");


        xSemaphoreGive(rx_sem);
        xSemaphoreGive(tx_sem);
        xSemaphoreTake(ctrl_sem, portMAX_DELAY);

        ESP_ERROR_CHECK(can_stop());
        ESP_LOGI(EXAMPLE_TAG, "Driver stopped");
        vTaskDelay(pdMS_TO_TICKS(100));
    }
    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
