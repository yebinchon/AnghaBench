#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {scalar_t__ hci_handle; scalar_t__ link_role; scalar_t__ transport; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  peer_le_features; scalar_t__ in_use; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_6__ {TYPE_1__* acl_db; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_ble_default_data_packet_txtime ) () ;int /*<<< orphan*/  (* get_ble_default_data_packet_length ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BD_FEATURES_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ BT_TRANSPORT_LE ; 
 scalar_t__ HCI_ERR_CONN_FAILED_ESTABLISHMENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 int MAX_L2CAP_LINKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__*) ; 
 TYPE_3__ btm_cb ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(UINT8 *p)
{
    tACL_CONN        *p_acl_cb = &btm_cb.acl_db[0];
    UINT16            handle;
    UINT8             status;
    int               xx;

    FUNC0 ("btm_ble_read_remote_features_complete ");

    FUNC4(status, p);

    // if LE read remote feature failed for HCI_ERR_CONN_FAILED_ESTABLISHMENT,
    // expect disconnect complete to be received
    if (status != HCI_ERR_CONN_FAILED_ESTABLISHMENT) {
        FUNC3 (handle, p);

        /* Look up the connection by handle and copy features */
        for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p_acl_cb++) {
            if ((p_acl_cb->in_use) && (p_acl_cb->hci_handle == handle)) {
                FUNC2(p_acl_cb->peer_le_features, p, BD_FEATURES_LEN);
#if BLE_INCLUDED == TRUE
                /* In the original Bluedroid version, slave need to send LL_VERSION_IND(call btsnd_hcic_rmt_ver_req)
                 * to remote device if it has not received ll_version_ind.
                 * Delete it to resolve Android 7.0 incompatible problem. But it may cause that slave host
                 * can't get remote device's version.*/
                if (p_acl_cb->link_role == HCI_ROLE_MASTER){
                    FUNC6 (p_acl_cb->hci_handle);
                }
                else{
                    if (p_acl_cb->transport == BT_TRANSPORT_LE) {
                        if (FUNC1(p_acl_cb->peer_le_features)) {
                            uint16_t data_length = FUNC7()->get_ble_default_data_packet_length();
                            uint16_t data_txtime = FUNC7()->get_ble_default_data_packet_txtime();
                            FUNC5(p_acl_cb->hci_handle, data_length, data_txtime);
                        }
                        FUNC8 (p_acl_cb->remote_addr);
                    }
                }
#endif
                break;
            }
        }
    }

}