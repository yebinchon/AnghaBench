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
struct peer {int disc_prev_chr_val; void* disc_cb_arg; int /*<<< orphan*/ * disc_cb; int /*<<< orphan*/  svcs; } ;
typedef  int /*<<< orphan*/  peer_disc_fn ;

/* Variables and functions */
 int BLE_HS_ENOTCONN ; 
 struct peer_svc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct peer*) ; 
 int /*<<< orphan*/  next ; 
 struct peer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct peer_svc*) ; 
 int /*<<< orphan*/  peer_svc_disced ; 

int
FUNC5(uint16_t conn_handle, peer_disc_fn *disc_cb, void *disc_cb_arg)
{
    struct peer_svc *svc;
    struct peer *peer;
    int rc;

    peer = FUNC3(conn_handle);
    if (peer == NULL) {
        return BLE_HS_ENOTCONN;
    }

    /* Undiscover everything first. */
    while ((svc = FUNC0(&peer->svcs)) != NULL) {
        FUNC1(&peer->svcs, next);
        FUNC4(svc);
    }

    peer->disc_prev_chr_val = 1;
    peer->disc_cb = disc_cb;
    peer->disc_cb_arg = disc_cb_arg;

    rc = FUNC2(conn_handle, peer_svc_disced, peer);
    if (rc != 0) {
        return rc;
    }

    return 0;
}