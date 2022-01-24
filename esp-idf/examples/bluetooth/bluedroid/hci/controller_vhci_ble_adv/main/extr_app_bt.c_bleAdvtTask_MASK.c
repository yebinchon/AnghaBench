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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  vhci_host_cb ; 

void FUNC8(void *pvParameters)
{
    int cmd_cnt = 0;
    bool send_avail = false;
    FUNC1(&vhci_host_cb);
    FUNC6("BLE advt task start\n");
    while (1) {
        FUNC7(1000 / portTICK_PERIOD_MS);
        send_avail = FUNC0();
        if (send_avail) {
            switch (cmd_cnt) {
            case 0: FUNC5(); ++cmd_cnt; break;
            case 1: FUNC4(); ++cmd_cnt; break;
            case 2: FUNC3(); ++cmd_cnt; break;
            case 3: FUNC2(); ++cmd_cnt; break;
            }
        }
        FUNC6("BLE Advertise, flag_send_avail: %d, cmd_sent: %d\n", send_avail, cmd_cnt);
    }
}