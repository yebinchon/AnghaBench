
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_length_code; int* data; int flags; int identifier; } ;
typedef TYPE_1__ can_message_t ;


 int CAN_MSG_FLAG_SELF ;
 int ESP_ERROR_CHECK (int ) ;
 int MSG_ID ;
 int NO_OF_ITERS ;
 int NO_OF_MSGS ;
 int can_transmit (TYPE_1__*,int ) ;
 int pdMS_TO_TICKS (int) ;
 int portMAX_DELAY ;
 int tx_sem ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void can_transmit_task(void *arg)
{
    can_message_t tx_msg = {.data_length_code = 1, .identifier = MSG_ID, .flags = CAN_MSG_FLAG_SELF};
    for (int iter = 0; iter < NO_OF_ITERS; iter++) {
        xSemaphoreTake(tx_sem, portMAX_DELAY);
        for (int i = 0; i < NO_OF_MSGS; i++) {

            tx_msg.data[0] = i;
            ESP_ERROR_CHECK(can_transmit(&tx_msg, portMAX_DELAY));
            vTaskDelay(pdMS_TO_TICKS(10));
        }
    }
    vTaskDelete(((void*)0));
}
