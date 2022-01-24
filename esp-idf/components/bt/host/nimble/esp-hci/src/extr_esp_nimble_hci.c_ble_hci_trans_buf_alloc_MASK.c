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
#define  BLE_HCI_TRANS_BUF_CMD 130 
#define  BLE_HCI_TRANS_BUF_EVT_HI 129 
#define  BLE_HCI_TRANS_BUF_EVT_LO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ble_hci_cmd_pool ; 
 int /*<<< orphan*/  ble_hci_evt_hi_pool ; 
 int /*<<< orphan*/  ble_hci_evt_lo_pool ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

uint8_t *FUNC2(int type)
{
    uint8_t *buf;

    switch (type) {
    case BLE_HCI_TRANS_BUF_CMD:
        buf = FUNC1(&ble_hci_cmd_pool);
        break;

    case BLE_HCI_TRANS_BUF_EVT_HI:
        buf = FUNC1(&ble_hci_evt_hi_pool);
        if (buf == NULL) {
            /* If no high-priority event buffers remain, try to grab a
             * low-priority one.
             */
            buf = FUNC2(BLE_HCI_TRANS_BUF_EVT_LO);
        }
        break;

    case BLE_HCI_TRANS_BUF_EVT_LO:
        buf = FUNC1(&ble_hci_evt_lo_pool);
        break;

    default:
        FUNC0(0);
        buf = NULL;
    }

    return buf;
}