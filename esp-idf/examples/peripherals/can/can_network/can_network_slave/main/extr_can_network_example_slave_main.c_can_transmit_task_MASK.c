#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ tx_task_action_t ;
struct TYPE_5__ {int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  EXAMPLE_TAG ; 
 scalar_t__ TX_SEND_DATA ; 
 scalar_t__ TX_SEND_PING_RESP ; 
 scalar_t__ TX_SEND_STOP_RESP ; 
 scalar_t__ TX_TASK_EXIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctrl_task_sem ; 
 TYPE_1__ data_message ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ pdTRUE ; 
 TYPE_1__ ping_resp ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  stop_data_sem ; 
 TYPE_1__ stop_resp ; 
 int /*<<< orphan*/  tx_task_queue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 

__attribute__((used)) static void FUNC9(void *arg)
{
    while (1) {
        tx_task_action_t action;
        FUNC5(tx_task_queue, &action, portMAX_DELAY);

        if (action == TX_SEND_PING_RESP) {
            //Transmit ping response to master
            FUNC1(&ping_resp, portMAX_DELAY);
            FUNC0(EXAMPLE_TAG, "Transmitted ping response");
            FUNC6(ctrl_task_sem);
        } else if (action == TX_SEND_DATA) {
            //Transmit data messages until stop command is received
            FUNC0(EXAMPLE_TAG, "Start transmitting data");
            while (1) {
                //FreeRTOS tick count used to simulate sensor data
                uint32_t sensor_data = FUNC8();
                for (int i = 0; i < 4; i++) {
                    data_message.data[i] = (sensor_data >> (i * 8)) & 0xFF;
                }
                FUNC1(&data_message, portMAX_DELAY);
                FUNC0(EXAMPLE_TAG, "Transmitted data value %d", sensor_data);
                FUNC3(FUNC2(DATA_PERIOD_MS));
                if (FUNC7(stop_data_sem, 0) == pdTRUE) {
                    break;
                }
            }
        } else if (action == TX_SEND_STOP_RESP) {
            //Transmit stop response to master
            FUNC1(&stop_resp, portMAX_DELAY);
            FUNC0(EXAMPLE_TAG, "Transmitted stop response");
            FUNC6(ctrl_task_sem);
        } else if (action == TX_TASK_EXIT) {
            break;
        }
    }
    FUNC4(NULL);
}