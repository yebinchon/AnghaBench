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
struct TYPE_2__ {int /*<<< orphan*/  val_handle; } ;
struct peer_chr {TYPE_1__ chr; } ;
struct peer {int /*<<< orphan*/  conn_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLECENT_CHR_SUP_NEW_ALERT_CAT_UUID ; 
 int /*<<< orphan*/  BLECENT_SVC_ALERT_UUID ; 
 int /*<<< orphan*/  BLE_ERR_REM_USER_CONN_TERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blecent_on_read ; 
 struct peer_chr* FUNC4 (struct peer const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const struct peer *peer)
{
    const struct peer_chr *chr;
    int rc;

    /* Read the supported-new-alert-category characteristic. */
    chr = FUNC4(peer,
                             FUNC0(BLECENT_SVC_ALERT_UUID),
                             FUNC0(BLECENT_CHR_SUP_NEW_ALERT_CAT_UUID));
    if (chr == NULL) {
        FUNC1(ERROR, "Error: Peer doesn't support the Supported New "
                    "Alert Category characteristic\n");
        goto err;
    }

    rc = FUNC3(peer->conn_handle, chr->chr.val_handle,
                        blecent_on_read, NULL);
    if (rc != 0) {
        FUNC1(ERROR, "Error: Failed to read characteristic; rc=%d\n",
                    rc);
        goto err;
    }

    return;
err:
    /* Terminate the connection. */
    FUNC2(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
}