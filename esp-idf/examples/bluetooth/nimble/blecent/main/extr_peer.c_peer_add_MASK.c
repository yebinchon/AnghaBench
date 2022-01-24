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
typedef  int /*<<< orphan*/  uint16_t ;
struct peer {int /*<<< orphan*/  conn_handle; } ;

/* Variables and functions */
 int BLE_HS_EALREADY ; 
 int BLE_HS_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct peer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 struct peer* FUNC2 (int /*<<< orphan*/ *) ; 
 struct peer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  peer_pool ; 
 int /*<<< orphan*/  peers ; 

int
FUNC4(uint16_t conn_handle)
{
    struct peer *peer;

    /* Make sure the connection handle is unique. */
    peer = FUNC3(conn_handle);
    if (peer != NULL) {
        return BLE_HS_EALREADY;
    }

    peer = FUNC2(&peer_pool);
    if (peer == NULL) {
        /* Out of memory. */
        return BLE_HS_ENOMEM;
    }

    FUNC1(peer, 0, sizeof * peer);
    peer->conn_handle = conn_handle;

    FUNC0(&peers, peer, next);

    return 0;
}