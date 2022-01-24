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

/* Variables and functions */
 int /*<<< orphan*/  BLE_HCI_EVCODE_HW_ERROR ; 
 int /*<<< orphan*/  BLE_HCI_EVCODE_LE_META ; 
 int BLE_HCI_EVENT_HDR_LEN ; 
 int /*<<< orphan*/  BLE_HCI_LE_SUBEV_ADV_RPT ; 
 int /*<<< orphan*/  BLE_HCI_TRANS_BUF_EVT_HI ; 
 int /*<<< orphan*/  BLE_HCI_TRANS_BUF_EVT_LO ; 
 int /*<<< orphan*/  BLE_HCI_UART_H4_ACL ; 
 int /*<<< orphan*/  BLE_HCI_UART_H4_EVT ; 
 int UINT8_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(uint8_t *data, uint16_t len)
{

    if (data[0] == BLE_HCI_UART_H4_EVT) {
        uint8_t *evbuf;
        int totlen;
        int rc;

        totlen = BLE_HCI_EVENT_HDR_LEN + data[2];
        FUNC0(totlen <= UINT8_MAX + BLE_HCI_EVENT_HDR_LEN);

        if (data[1] == BLE_HCI_EVCODE_HW_ERROR) {
            FUNC0(0);
        }

        /* Allocate LE Advertising Report Event from lo pool only */
        if ((data[1] == BLE_HCI_EVCODE_LE_META) && (data[3] == BLE_HCI_LE_SUBEV_ADV_RPT)) {
            evbuf = FUNC2(BLE_HCI_TRANS_BUF_EVT_LO);
            /* Skip advertising report if we're out of memory */
            if (!evbuf) {
                return 0;
            }
        } else {
            evbuf = FUNC2(BLE_HCI_TRANS_BUF_EVT_HI);
            FUNC0(evbuf != NULL);
        }

        FUNC4(evbuf, &data[1], totlen);

        rc = FUNC3(evbuf);
        FUNC0(rc == 0);
    } else if (data[0] == BLE_HCI_UART_H4_ACL) {
        FUNC1(data + 1, len - 1);
    }
    return 0;
}