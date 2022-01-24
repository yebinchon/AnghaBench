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
struct TYPE_2__ {int /*<<< orphan*/  val_handle; } ;
struct peer_chr {TYPE_1__ chr; } ;
struct peer {int /*<<< orphan*/  conn_handle; } ;
struct ble_gatt_error {scalar_t__ status; } ;
struct ble_gatt_attr {int handle; int /*<<< orphan*/  om; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLECENT_CHR_ALERT_NOT_CTRL_PT ; 
 int /*<<< orphan*/  BLECENT_SVC_ALERT_UUID ; 
 int /*<<< orphan*/  BLE_ERR_REM_USER_CONN_TERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blecent_on_write ; 
 struct peer_chr* FUNC4 (struct peer const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct peer* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(uint16_t conn_handle,
                const struct ble_gatt_error *error,
                struct ble_gatt_attr *attr,
                void *arg)
{
    FUNC1(INFO, "Read complete; status=%d conn_handle=%d", error->status,
                conn_handle);
    if (error->status == 0) {
        FUNC1(INFO, " attr_handle=%d value=", attr->handle);
        FUNC6(attr->om);
    }
    FUNC1(INFO, "\n");

    /* Write two bytes (99, 100) to the alert-notification-control-point
     * characteristic.
     */
    const struct peer_chr *chr;
    uint8_t value[2];
    int rc;
    const struct peer *peer = FUNC5(conn_handle);

    chr = FUNC4(peer,
                             FUNC0(BLECENT_SVC_ALERT_UUID),
                             FUNC0(BLECENT_CHR_ALERT_NOT_CTRL_PT));
    if (chr == NULL) {
        FUNC1(ERROR, "Error: Peer doesn't support the Alert "
                    "Notification Control Point characteristic\n");
        goto err;
    }

    value[0] = 99;
    value[1] = 100;
    rc = FUNC3(conn_handle, chr->chr.val_handle,
                              value, sizeof value, blecent_on_write, NULL);
    if (rc != 0) {
        FUNC1(ERROR, "Error: Failed to write characteristic; rc=%d\n",
                    rc);
        goto err;
    }

    return 0;
err:
    /* Terminate the connection. */
    return FUNC2(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
}