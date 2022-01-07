
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ can_message_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int ) ;
 int EXAMPLE_TAG ;
 int NO_OF_ITERS ;
 int NO_OF_MSGS ;
 int can_receive (TYPE_1__*,int ) ;
 int ctrl_sem ;
 int portMAX_DELAY ;
 int rx_sem ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void can_receive_task(void *arg)
{
    can_message_t rx_message;
    for (int iter = 0; iter < NO_OF_ITERS; iter++) {
        xSemaphoreTake(rx_sem, portMAX_DELAY);
        for (int i = 0; i < NO_OF_MSGS; i++) {

            ESP_ERROR_CHECK(can_receive(&rx_message, portMAX_DELAY));
            ESP_LOGI(EXAMPLE_TAG, "Msg received - Data = %d", rx_message.data[0]);
        }

        xSemaphoreGive(ctrl_sem);
    }
    vTaskDelete(((void*)0));
}
