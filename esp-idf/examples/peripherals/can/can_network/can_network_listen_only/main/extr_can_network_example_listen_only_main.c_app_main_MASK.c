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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EXAMPLE_TAG ; 
 int /*<<< orphan*/  RX_TASK_PRIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  can_receive_task ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  f_config ; 
 int /*<<< orphan*/  g_config ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  rx_sem ; 
 int /*<<< orphan*/  t_config ; 
 int /*<<< orphan*/  tskNO_AFFINITY ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
    rx_sem = FUNC9();
    FUNC12(can_receive_task, "CAN_rx", 4096, NULL, RX_TASK_PRIO, NULL, tskNO_AFFINITY);

    //Install and start CAN driver
    FUNC0(FUNC2(&g_config, &t_config, &f_config));
    FUNC1(EXAMPLE_TAG, "Driver installed");
    FUNC0(FUNC4());
    FUNC1(EXAMPLE_TAG, "Driver started");

    FUNC10(rx_sem);                     //Start RX task
    FUNC8(FUNC6(100));
    FUNC11(rx_sem, portMAX_DELAY);      //Wait for RX task to complete

    //Stop and uninstall CAN driver
    FUNC0(FUNC5());
    FUNC1(EXAMPLE_TAG, "Driver stopped");
    FUNC0(FUNC3());
    FUNC1(EXAMPLE_TAG, "Driver uninstalled");

    //Cleanup
    FUNC7(rx_sem);
}