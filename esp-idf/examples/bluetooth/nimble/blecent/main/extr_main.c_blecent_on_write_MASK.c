#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
struct peer_dsc {TYPE_1__ dsc; } ;
struct peer {int /*<<< orphan*/  conn_handle; } ;
struct ble_gatt_error {int /*<<< orphan*/  status; } ;
struct ble_gatt_attr {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLECENT_CHR_UNR_ALERT_STAT_UUID ; 
 int /*<<< orphan*/  BLECENT_SVC_ALERT_UUID ; 
 int /*<<< orphan*/  BLE_ERR_REM_USER_CONN_TERM ; 
 int /*<<< orphan*/  BLE_GATT_DSC_CLT_CFG_UUID16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blecent_on_subscribe ; 
 struct peer_dsc* FUNC4 (struct peer const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct peer* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(uint16_t conn_handle,
                 const struct ble_gatt_error *error,
                 struct ble_gatt_attr *attr,
                 void *arg)
{
    FUNC1(INFO,
                "Write complete; status=%d conn_handle=%d attr_handle=%d\n",
                error->status, conn_handle, attr->handle);

    /* Subscribe to notifications for the Unread Alert Status characteristic.
     * A central enables notifications by writing two bytes (1, 0) to the
     * characteristic's client-characteristic-configuration-descriptor (CCCD).
     */
    const struct peer_dsc *dsc;
    uint8_t value[2];
    int rc;
    const struct peer *peer = FUNC5(conn_handle);

    dsc = FUNC4(peer,
                             FUNC0(BLECENT_SVC_ALERT_UUID),
                             FUNC0(BLECENT_CHR_UNR_ALERT_STAT_UUID),
                             FUNC0(BLE_GATT_DSC_CLT_CFG_UUID16));
    if (dsc == NULL) {
        FUNC1(ERROR, "Error: Peer lacks a CCCD for the Unread Alert "
                    "Status characteristic\n");
        goto err;
    }

    value[0] = 1;
    value[1] = 0;
    rc = FUNC3(conn_handle, dsc->dsc.handle,
                              value, sizeof value, blecent_on_subscribe, NULL);
    if (rc != 0) {
        FUNC1(ERROR, "Error: Failed to subscribe to characteristic; "
                    "rc=%d\n", rc);
        goto err;
    }

    return 0;
err:
    /* Terminate the connection. */
    return FUNC2(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
}