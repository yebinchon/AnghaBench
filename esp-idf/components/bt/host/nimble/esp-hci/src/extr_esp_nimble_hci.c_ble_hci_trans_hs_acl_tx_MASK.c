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
typedef  scalar_t__ uint16_t ;
struct os_mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ACL_BUF_SIZE ; 
 int /*<<< orphan*/  BLE_HCI_UART_H4_ACL ; 
 int BLE_HS_EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct os_mbuf*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct os_mbuf*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct os_mbuf*) ; 

int FUNC7(struct os_mbuf *om)
{
    uint16_t len = 0;
    uint8_t data[FUNC1(BLE_ACL_BUF_SIZE) + 1];
    /* If this packet is zero length, just free it */
    if (FUNC2(om) == 0) {
        FUNC6(om);
        return 0;
    }
    data[0] = BLE_HCI_UART_H4_ACL;
    len++;

    if (!FUNC3()) {
        FUNC0(TAG, "Controller not ready to receive packets from host at this time, try again after sometime");
        return BLE_HS_EAGAIN;
    }

    FUNC5(om, 0, FUNC2(om), &data[1]);
    len += FUNC2(om);

    FUNC4(data, len);

    FUNC6(om);

    return 0;
}