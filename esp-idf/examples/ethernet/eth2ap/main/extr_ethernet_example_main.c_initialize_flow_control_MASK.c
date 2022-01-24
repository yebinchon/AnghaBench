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
typedef  int /*<<< orphan*/  flow_control_msg_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FLOW_CONTROL_QUEUE_LENGTH ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  eth2wifi_flow_control_task ; 
 int /*<<< orphan*/  flow_control_queue ; 
 scalar_t__ pdTRUE ; 
 scalar_t__ tskIDLE_PRIORITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC3(void)
{
    flow_control_queue = FUNC1(FLOW_CONTROL_QUEUE_LENGTH, sizeof(flow_control_msg_t));
    if (!flow_control_queue) {
        FUNC0(TAG, "create flow control queue failed");
        return ESP_FAIL;
    }
    BaseType_t ret = FUNC2(eth2wifi_flow_control_task, "flow_ctl", 2048, NULL, (tskIDLE_PRIORITY + 2), NULL);
    if (ret != pdTRUE) {
        FUNC0(TAG, "create flow control task failed");
        return ESP_FAIL;
    }
    return ESP_OK;
}