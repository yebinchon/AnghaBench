
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rx_task_action_t ;
struct TYPE_3__ {scalar_t__ identifier; } ;
typedef TYPE_1__ can_message_t ;


 scalar_t__ ID_MASTER_PING ;
 scalar_t__ ID_MASTER_START_CMD ;
 scalar_t__ ID_MASTER_STOP_CMD ;
 scalar_t__ RX_RECEIVE_PING ;
 scalar_t__ RX_RECEIVE_START_CMD ;
 scalar_t__ RX_RECEIVE_STOP_CMD ;
 scalar_t__ RX_TASK_EXIT ;
 int can_receive (TYPE_1__*,int ) ;
 int ctrl_task_sem ;
 int portMAX_DELAY ;
 int rx_task_queue ;
 int stop_data_sem ;
 int vTaskDelete (int *) ;
 int xQueueReceive (int ,scalar_t__*,int ) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void can_receive_task(void *arg)
{
    while (1) {
        rx_task_action_t action;
        xQueueReceive(rx_task_queue, &action, portMAX_DELAY);
        if (action == RX_RECEIVE_PING) {

            can_message_t rx_msg;
            while (1) {
                can_receive(&rx_msg, portMAX_DELAY);
                if (rx_msg.identifier == ID_MASTER_PING) {
                    xSemaphoreGive(ctrl_task_sem);
                    break;
                }
            }
        } else if (action == RX_RECEIVE_START_CMD) {

            can_message_t rx_msg;
            while (1) {
                can_receive(&rx_msg, portMAX_DELAY);
                if (rx_msg.identifier == ID_MASTER_START_CMD) {
                    xSemaphoreGive(ctrl_task_sem);
                    break;
                }
            }
        } else if (action == RX_RECEIVE_STOP_CMD) {

            can_message_t rx_msg;
            while (1) {
                can_receive(&rx_msg, portMAX_DELAY);
                if (rx_msg.identifier == ID_MASTER_STOP_CMD) {
                    xSemaphoreGive(stop_data_sem);
                    xSemaphoreGive(ctrl_task_sem);
                    break;
                }
            }
        } else if (action == RX_TASK_EXIT) {
            break;
        }
    }
    vTaskDelete(((void*)0));
}
