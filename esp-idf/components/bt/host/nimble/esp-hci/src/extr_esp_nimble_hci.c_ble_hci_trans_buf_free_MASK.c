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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ble_hci_cmd_pool ; 
 int /*<<< orphan*/  ble_hci_evt_hi_pool ; 
 int /*<<< orphan*/  ble_hci_evt_lo_pool ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(uint8_t *buf)
{
    int rc;
    /* XXX: this may look a bit odd, but the controller uses the command
    * buffer to send back the command complete/status as an immediate
    * response to the command. This was done to insure that the controller
    * could always send back one of these events when a command was received.
    * Thus, we check to see which pool the buffer came from so we can free
    * it to the appropriate pool
    */
    if (FUNC1(&ble_hci_evt_hi_pool, buf)) {
        rc = FUNC2(&ble_hci_evt_hi_pool, buf);
        FUNC0(rc == 0);
    } else if (FUNC1(&ble_hci_evt_lo_pool, buf)) {
        rc = FUNC2(&ble_hci_evt_lo_pool, buf);
        FUNC0(rc == 0);
    } else {
        FUNC0(FUNC1(&ble_hci_cmd_pool, buf));
        rc = FUNC2(&ble_hci_cmd_pool, buf);
        FUNC0(rc == 0);
    }
}