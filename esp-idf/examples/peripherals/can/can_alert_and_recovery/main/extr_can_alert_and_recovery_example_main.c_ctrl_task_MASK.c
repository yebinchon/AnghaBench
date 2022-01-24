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
typedef  int uint32_t ;

/* Variables and functions */
 int CAN_ALERT_ABOVE_ERR_WARN ; 
 int CAN_ALERT_BUS_OFF ; 
 int CAN_ALERT_BUS_RECOVERED ; 
 int CAN_ALERT_ERR_PASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  EXAMPLE_TAG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ctrl_task_sem ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int trigger_tx_error ; 
 int /*<<< orphan*/  tx_task_sem ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void *arg)
{
    FUNC11(ctrl_task_sem, portMAX_DELAY);
    FUNC0(FUNC6());
    FUNC1(EXAMPLE_TAG, "Driver started");
    FUNC1(EXAMPLE_TAG, "Starting transmissions");
    FUNC10(tx_task_sem);    //Start transmit task

    //Prepare to trigger errors, reconfigure alerts to detect change in error state
    FUNC5(CAN_ALERT_ABOVE_ERR_WARN | CAN_ALERT_ERR_PASS | CAN_ALERT_BUS_OFF, NULL);
    for (int i = 3; i > 0; i--) {
        FUNC2(EXAMPLE_TAG, "Trigger TX errors in %d", i);
        FUNC8(FUNC7(1000));
    }
    FUNC1(EXAMPLE_TAG, "Trigger errors");
    trigger_tx_error = true;

    while (1) {
        uint32_t alerts;
        FUNC4(&alerts, portMAX_DELAY);
        if (alerts & CAN_ALERT_ABOVE_ERR_WARN) {
            FUNC1(EXAMPLE_TAG, "Surpassed Error Warning Limit");
        }
        if (alerts & CAN_ALERT_ERR_PASS) {
            FUNC1(EXAMPLE_TAG, "Entered Error Passive state");
        }
        if (alerts & CAN_ALERT_BUS_OFF) {
            FUNC1(EXAMPLE_TAG, "Bus Off state");
            //Prepare to initiate bus recovery, reconfigure alerts to detect bus recovery completion
            FUNC5(CAN_ALERT_BUS_RECOVERED, NULL);
            for (int i = 3; i > 0; i--) {
                FUNC2(EXAMPLE_TAG, "Initiate bus recovery in %d", i);
                FUNC8(FUNC7(1000));
            }
            FUNC3();    //Needs 128 occurrences of bus free signal
            FUNC1(EXAMPLE_TAG, "Initiate bus recovery");
        }
        if (alerts & CAN_ALERT_BUS_RECOVERED) {
            //Bus recovery was successful, exit control task to uninstall driver
            FUNC1(EXAMPLE_TAG, "Bus Recovered");
            break;
        }
    }
    //No need call can_stop(), bus recovery will return to stopped state
    FUNC10(ctrl_task_sem);
    FUNC9(NULL);
}