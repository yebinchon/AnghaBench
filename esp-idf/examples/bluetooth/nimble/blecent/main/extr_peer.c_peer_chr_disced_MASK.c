#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct peer {scalar_t__ conn_handle; int /*<<< orphan*/  disc_prev_chr_val; TYPE_2__* cur_svc; } ;
struct ble_gatt_error {int status; } ;
struct ble_gatt_chr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  start_handle; } ;
struct TYPE_4__ {TYPE_1__ svc; } ;

/* Variables and functions */
#define  BLE_HS_EDONE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct peer*,int /*<<< orphan*/ ,struct ble_gatt_chr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct peer*) ; 
 int /*<<< orphan*/  FUNC3 (struct peer*,int) ; 

__attribute__((used)) static int
FUNC4(uint16_t conn_handle, const struct ble_gatt_error *error,
                const struct ble_gatt_chr *chr, void *arg)
{
    struct peer *peer;
    int rc;

    peer = arg;
    FUNC0(peer->conn_handle == conn_handle);

    switch (error->status) {
    case 0:
        rc = FUNC1(peer, peer->cur_svc->svc.start_handle, chr);
        break;

    case BLE_HS_EDONE:
        /* All characteristics in this service discovered; start discovering
         * characteristics in the next service.
         */
        if (peer->disc_prev_chr_val > 0) {
            FUNC2(peer);
        }
        rc = 0;
        break;

    default:
        rc = error->status;
        break;
    }

    if (rc != 0) {
        /* Error; abort discovery. */
        FUNC3(peer, rc);
    }

    return rc;
}