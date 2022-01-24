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
struct peer {int /*<<< orphan*/  conn_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ERR_REM_USER_CONN_TERM ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct peer const*) ; 

__attribute__((used)) static void
FUNC3(const struct peer *peer, int status, void *arg)
{

    if (status != 0) {
        /* Service discovery failed.  Terminate the connection. */
        FUNC0(ERROR, "Error: Service discovery failed; status=%d "
                    "conn_handle=%d\n", status, peer->conn_handle);
        FUNC1(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
        return;
    }

    /* Service discovery has completed successfully.  Now we have a complete
     * list of services, characteristics, and descriptors that the peer
     * supports.
     */
    FUNC0(ERROR, "Service discovery complete; status=%d "
                "conn_handle=%d\n", status, peer->conn_handle);

    /* Now perform three GATT procedures against the peer: read,
     * write, and subscribe to notifications.
     */
    FUNC2(peer);
}