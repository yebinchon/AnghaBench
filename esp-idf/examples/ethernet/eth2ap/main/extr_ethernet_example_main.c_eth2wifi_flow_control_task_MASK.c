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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  packet; scalar_t__ length; } ;
typedef  TYPE_1__ flow_control_msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_IF_WIFI_AP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int ESP_OK ; 
 scalar_t__ FLOW_CONTROL_QUEUE_TIMEOUT_MS ; 
 scalar_t__ FLOW_CONTROL_WIFI_SEND_TIMEOUT_MS ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  flow_control_queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ pdTRUE ; 
 scalar_t__ s_sta_is_connected ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *args)
{
    flow_control_msg_t msg;
    int res = 0;
    uint32_t timeout = 0;
    while (1) {
        if (FUNC6(flow_control_queue, &msg, FUNC3(FLOW_CONTROL_QUEUE_TIMEOUT_MS)) == pdTRUE) {
            timeout = 0;
            if (s_sta_is_connected && msg.length) {
                do {
                    FUNC4(FUNC3(timeout));
                    timeout += 2;
                    res = FUNC1(ESP_IF_WIFI_AP, msg.packet, msg.length);
                } while (res && timeout < FLOW_CONTROL_WIFI_SEND_TIMEOUT_MS);
                if (res != ESP_OK) {
                    FUNC0(TAG, "WiFi send packet failed: %d", res);
                }
            }
            FUNC2(msg.packet);
        }
    }
    FUNC5(NULL);
}