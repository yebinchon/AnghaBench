#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tx_task_action_t ;
typedef  int /*<<< orphan*/  rx_task_action_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EXAMPLE_TAG ; 
 int /*<<< orphan*/  ITER_DELAY_MS ; 
 int NO_OF_ITERS ; 
 int /*<<< orphan*/  RX_RECEIVE_DATA ; 
 int /*<<< orphan*/  RX_RECEIVE_PING_RESP ; 
 int /*<<< orphan*/  RX_RECEIVE_STOP_RESP ; 
 int /*<<< orphan*/  RX_TASK_EXIT ; 
 int /*<<< orphan*/  TX_SEND_PINGS ; 
 int /*<<< orphan*/  TX_SEND_START_CMD ; 
 int /*<<< orphan*/  TX_SEND_STOP_CMD ; 
 int /*<<< orphan*/  TX_TASK_EXIT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ctrl_task_sem ; 
 int /*<<< orphan*/  done_sem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  rx_task_queue ; 
 int /*<<< orphan*/  tx_task_queue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *arg)
{
    FUNC9(ctrl_task_sem, portMAX_DELAY);
    tx_task_action_t tx_action;
    rx_task_action_t rx_action;

    for (int iter = 0; iter < NO_OF_ITERS; iter++) {
        FUNC0(FUNC2());
        FUNC1(EXAMPLE_TAG, "Driver started");

        //Start transmitting pings, and listen for ping response
        tx_action = TX_SEND_PINGS;
        rx_action = RX_RECEIVE_PING_RESP;
        FUNC7(tx_task_queue, &tx_action, portMAX_DELAY);
        FUNC7(rx_task_queue, &rx_action, portMAX_DELAY);

        //Send Start command to slave, and receive data messages
        FUNC9(ctrl_task_sem, portMAX_DELAY);
        tx_action = TX_SEND_START_CMD;
        rx_action = RX_RECEIVE_DATA;
        FUNC7(tx_task_queue, &tx_action, portMAX_DELAY);
        FUNC7(rx_task_queue, &rx_action, portMAX_DELAY);

        //Send Stop command to slave when enough data messages have been received. Wait for stop response
        FUNC9(ctrl_task_sem, portMAX_DELAY);
        tx_action = TX_SEND_STOP_CMD;
        rx_action = RX_RECEIVE_STOP_RESP;
        FUNC7(tx_task_queue, &tx_action, portMAX_DELAY);
        FUNC7(rx_task_queue, &rx_action, portMAX_DELAY);

        FUNC9(ctrl_task_sem, portMAX_DELAY);
        FUNC0(FUNC3());
        FUNC1(EXAMPLE_TAG, "Driver stopped");
        FUNC5(FUNC4(ITER_DELAY_MS));
    }
    //Stop TX and RX tasks
    tx_action = TX_TASK_EXIT;
    rx_action = RX_TASK_EXIT;
    FUNC7(tx_task_queue, &tx_action, portMAX_DELAY);
    FUNC7(rx_task_queue, &rx_action, portMAX_DELAY);

    //Delete Control task
    FUNC8(done_sem);
    FUNC6(NULL);
}