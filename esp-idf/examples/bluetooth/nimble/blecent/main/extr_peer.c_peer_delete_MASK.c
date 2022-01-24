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
struct peer_svc {int dummy; } ;
struct peer {int /*<<< orphan*/  svcs; } ;

/* Variables and functions */
 int BLE_HS_ENOTCONN ; 
 int BLE_HS_EOS ; 
 struct peer_svc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct peer*,struct peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int FUNC3 (int /*<<< orphan*/ *,struct peer*) ; 
 struct peer* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  peer_pool ; 
 int /*<<< orphan*/  FUNC5 (struct peer_svc*) ; 
 int /*<<< orphan*/  peers ; 

int
FUNC6(uint16_t conn_handle)
{
    struct peer_svc *svc;
    struct peer *peer;
    int rc;

    peer = FUNC4(conn_handle);
    if (peer == NULL) {
        return BLE_HS_ENOTCONN;
    }

    FUNC1(&peers, peer, peer, next);

    while ((svc = FUNC0(&peer->svcs)) != NULL) {
        FUNC2(&peer->svcs, next);
        FUNC5(svc);
    }

    rc = FUNC3(&peer_pool, peer);
    if (rc != 0) {
        return BLE_HS_EOS;
    }

    return 0;
}