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
struct TYPE_3__ {int /*<<< orphan*/  mpe_mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_BLOCK_SIZE ; 
 int /*<<< orphan*/  BLE_ACL_BUF_COUNT ; 
 int /*<<< orphan*/  BLE_HCI_EVT_BUF_SIZE ; 
 int /*<<< orphan*/  BLE_HCI_EVT_HI_BUF_COUNT ; 
 int /*<<< orphan*/  BLE_HCI_EVT_LO_BUF_COUNT ; 
 int BLE_HCI_TRANS_CMD_SZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ble_hci_acl_buf ; 
 int /*<<< orphan*/  ble_hci_acl_mbuf_pool ; 
 TYPE_1__ ble_hci_acl_pool ; 
 int /*<<< orphan*/  ble_hci_cmd_buf ; 
 int /*<<< orphan*/  ble_hci_cmd_pool ; 
 int /*<<< orphan*/  ble_hci_evt_hi_buf ; 
 int /*<<< orphan*/  ble_hci_evt_hi_pool ; 
 int /*<<< orphan*/  ble_hci_evt_lo_buf ; 
 int /*<<< orphan*/  ble_hci_evt_lo_pool ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    int rc;

    /* Ensure this function only gets called by sysinit. */
    FUNC1();

    rc = FUNC4(&ble_hci_acl_pool,
                             FUNC0(BLE_ACL_BUF_COUNT),
                             ACL_BLOCK_SIZE,
                             ble_hci_acl_buf,
                             "ble_hci_acl_pool");
    FUNC2(rc == 0);

    rc = FUNC3(&ble_hci_acl_mbuf_pool,
                           &ble_hci_acl_pool.mpe_mp,
                           ACL_BLOCK_SIZE,
                           FUNC0(BLE_ACL_BUF_COUNT));
    FUNC2(rc == 0);

    /*
     * Create memory pool of HCI command buffers. NOTE: we currently dont
     * allow this to be configured. The controller will only allow one
     * outstanding command. We decided to keep this a pool in case we allow
     * allow the controller to handle more than one outstanding command.
     */
    rc = FUNC5(&ble_hci_cmd_pool,
                         1,
                         BLE_HCI_TRANS_CMD_SZ,
                         ble_hci_cmd_buf,
                         "ble_hci_cmd_pool");
    FUNC2(rc == 0);

    rc = FUNC5(&ble_hci_evt_hi_pool,
                         FUNC0(BLE_HCI_EVT_HI_BUF_COUNT),
                         FUNC0(BLE_HCI_EVT_BUF_SIZE),
                         ble_hci_evt_hi_buf,
                         "ble_hci_evt_hi_pool");
    FUNC2(rc == 0);

    rc = FUNC5(&ble_hci_evt_lo_pool,
                         FUNC0(BLE_HCI_EVT_LO_BUF_COUNT),
                         FUNC0(BLE_HCI_EVT_BUF_SIZE),
                         ble_hci_evt_lo_buf,
                         "ble_hci_evt_lo_pool");
    FUNC2(rc == 0);
}