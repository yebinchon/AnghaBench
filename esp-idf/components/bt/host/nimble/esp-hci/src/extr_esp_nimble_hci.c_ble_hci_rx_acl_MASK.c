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
typedef  int /*<<< orphan*/  uint16_t ;
struct os_mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ACL_BUF_SIZE ; 
 int /*<<< orphan*/  BLE_HCI_DATA_HDR_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct os_mbuf*,int /*<<< orphan*/ *) ; 
 struct os_mbuf* FUNC4 () ; 
 scalar_t__ FUNC5 (struct os_mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct os_mbuf*) ; 

__attribute__((used)) static void FUNC7(uint8_t *data, uint16_t len)
{
    struct os_mbuf *m;
    int sr;
    if (len < BLE_HCI_DATA_HDR_SZ || len > FUNC0(BLE_ACL_BUF_SIZE)) {
        return;
    }

    m = FUNC4();

    if (!m) {
        return;
    }
    if (FUNC5(m, data, len)) {
        FUNC6(m);
        return;
    }
    FUNC1(sr);
    if (&ble_hci_rx_acl_hs_cb) {
        FUNC3(m, NULL);
    }
    FUNC2(sr);
}