#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rx_task_action_t ;
struct TYPE_3__ {scalar_t__ identifier; } ;
typedef  TYPE_1__ can_message_t ;

/* Variables and functions */
 scalar_t__ ID_MASTER_PING ; 
 scalar_t__ ID_MASTER_START_CMD ; 
 scalar_t__ ID_MASTER_STOP_CMD ; 
 scalar_t__ RX_RECEIVE_PING ; 
 scalar_t__ RX_RECEIVE_START_CMD ; 
 scalar_t__ RX_RECEIVE_STOP_CMD ; 
 scalar_t__ RX_TASK_EXIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctrl_task_sem ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  rx_task_queue ; 
 int /*<<< orphan*/  stop_data_sem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *arg)
{
    while (1) {
        rx_task_action_t action;
        FUNC2(rx_task_queue, &action, portMAX_DELAY);
        if (action == RX_RECEIVE_PING) {
            //Listen for pings from master
            can_message_t rx_msg;
            while (1) {
                FUNC0(&rx_msg, portMAX_DELAY);
                if (rx_msg.identifier == ID_MASTER_PING) {
                    FUNC3(ctrl_task_sem);
                    break;
                }
            }
        } else if (action == RX_RECEIVE_START_CMD) {
            //Listen for start command from master
            can_message_t rx_msg;
            while (1) {
                FUNC0(&rx_msg, portMAX_DELAY);
                if (rx_msg.identifier == ID_MASTER_START_CMD) {
                    FUNC3(ctrl_task_sem);
                    break;
                }
            }
        } else if (action == RX_RECEIVE_STOP_CMD) {
            //Listen for stop command from master
            can_message_t rx_msg;
            while (1) {
                FUNC0(&rx_msg, portMAX_DELAY);
                if (rx_msg.identifier == ID_MASTER_STOP_CMD) {
                    FUNC3(stop_data_sem);
                    FUNC3(ctrl_task_sem);
                    break;
                }
            }
        } else if (action == RX_TASK_EXIT) {
            break;
        }
    }
    FUNC1(NULL);
}