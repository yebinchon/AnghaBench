
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_DELAY_US ;
 int ERR_PERIOD_US ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ can_transmit (int *,int ) ;
 int ets_delay_us (int ) ;
 int invert_tx_bits (int) ;
 int pdMS_TO_TICKS (int) ;
 int portMAX_DELAY ;
 scalar_t__ trigger_tx_error ;
 int tx_msg ;
 int tx_task_sem ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void tx_task(void *arg)
{
    xSemaphoreTake(tx_task_sem, portMAX_DELAY);
    while (1) {
        if (can_transmit(&tx_msg, 0) == ESP_ERR_INVALID_STATE) {
            break;
        }
        if (trigger_tx_error) {

            ets_delay_us(ERR_DELAY_US);
            invert_tx_bits(1);
            ets_delay_us(ERR_PERIOD_US);
            invert_tx_bits(0);
        }
        vTaskDelay(pdMS_TO_TICKS(50));
    }
    vTaskDelete(((void*)0));
}
