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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ BLE_HCI_CMD_HDR_LEN ; 
 scalar_t__ BLE_HCI_UART_H4_CMD ; 
 int BLE_HS_EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 

int FUNC5(uint8_t *cmd)
{
    uint16_t len;

    FUNC1(cmd != NULL);
    *cmd = BLE_HCI_UART_H4_CMD;
    len = BLE_HCI_CMD_HDR_LEN + cmd[3] + 1;
    if (!FUNC3()) {
        FUNC0(TAG, "Controller not ready to receive packets from host at this time, try again after sometime");
        return BLE_HS_EAGAIN;
    }
    FUNC4(cmd, len);

    FUNC2(cmd);
    return 0;
}