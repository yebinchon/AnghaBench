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
struct ble_gatt_svc {int /*<<< orphan*/  start_handle; } ;
struct peer_svc {int /*<<< orphan*/  chrs; struct ble_gatt_svc svc; } ;
struct peer {int /*<<< orphan*/  svcs; } ;

/* Variables and functions */
 int BLE_HS_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct peer_svc*,struct peer_svc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct peer_svc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct peer_svc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 struct peer_svc* FUNC4 (int /*<<< orphan*/ *) ; 
 struct peer_svc* FUNC5 (struct peer*,int /*<<< orphan*/ ,struct peer_svc**) ; 
 int /*<<< orphan*/  peer_svc_pool ; 

__attribute__((used)) static int
FUNC6(struct peer *peer, const struct ble_gatt_svc *gatt_svc)
{
    struct peer_svc *prev;
    struct peer_svc *svc;

    svc = FUNC5(peer, gatt_svc->start_handle, &prev);
    if (svc != NULL) {
        /* Service already discovered. */
        return 0;
    }

    svc = FUNC4(&peer_svc_pool);
    if (svc == NULL) {
        /* Out of memory. */
        return BLE_HS_ENOMEM;
    }
    FUNC3(svc, 0, sizeof * svc);

    svc->svc = *gatt_svc;
    FUNC0(&svc->chrs);

    if (prev == NULL) {
        FUNC2(&peer->svcs, svc, next);
    } else {
        FUNC1(prev, svc, next);
    }

    return 0;
}