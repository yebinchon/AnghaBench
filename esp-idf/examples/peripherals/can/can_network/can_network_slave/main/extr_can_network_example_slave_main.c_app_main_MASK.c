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
 int /*<<< orphan*/  CTRL_TSK_PRIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EXAMPLE_TAG ; 
 int /*<<< orphan*/  RX_TASK_PRIO ; 
 int /*<<< orphan*/  TX_TASK_PRIO ; 
 int /*<<< orphan*/  can_control_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  can_receive_task ; 
 int /*<<< orphan*/  can_transmit_task ; 
 int /*<<< orphan*/  ctrl_task_sem ; 
 int /*<<< orphan*/  done_sem ; 
 int /*<<< orphan*/  f_config ; 
 int /*<<< orphan*/  g_config ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  rx_task_queue ; 
 int /*<<< orphan*/  stop_data_sem ; 
 int /*<<< orphan*/  t_config ; 
 int /*<<< orphan*/  tskNO_AFFINITY ; 
 int /*<<< orphan*/  tx_task_queue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC14(void)
{
    //Add short delay to allow master it to initialize first
    for (int i = 3; i > 0; i--) {
        FUNC5("Slave starting in %d\n", i);
        FUNC8(FUNC4(1000));
    }


    //Create semaphores and tasks
    tx_task_queue = FUNC9(1, sizeof(tx_task_action_t));
    rx_task_queue = FUNC9(1, sizeof(rx_task_action_t));
    ctrl_task_sem = FUNC10();
    stop_data_sem  = FUNC10();;
    done_sem  = FUNC10();;
    FUNC13(can_receive_task, "CAN_rx", 4096, NULL, RX_TASK_PRIO, NULL, tskNO_AFFINITY);
    FUNC13(can_transmit_task, "CAN_tx", 4096, NULL, TX_TASK_PRIO, NULL, tskNO_AFFINITY);
    FUNC13(can_control_task, "CAN_ctrl", 4096, NULL, CTRL_TSK_PRIO, NULL, tskNO_AFFINITY);

    //Install CAN driver, trigger tasks to start
    FUNC0(FUNC2(&g_config, &t_config, &f_config));
    FUNC1(EXAMPLE_TAG, "Driver installed");

    FUNC11(ctrl_task_sem);              //Start Control task
    FUNC12(done_sem, portMAX_DELAY);    //Wait for tasks to complete

    //Uninstall CAN driver
    FUNC0(FUNC3());
    FUNC1(EXAMPLE_TAG, "Driver uninstalled");

    //Cleanup
    FUNC7(ctrl_task_sem);
    FUNC7(stop_data_sem);
    FUNC7(done_sem);
    FUNC6(tx_task_queue);
    FUNC6(rx_task_queue);
}