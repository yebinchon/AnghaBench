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
struct seg_tx {unsigned int seq_auth; unsigned int nack_count; int seg_n; TYPE_1__** seg; int /*<<< orphan*/  dst; int /*<<< orphan*/ * sub; int /*<<< orphan*/ * cb_data; int /*<<< orphan*/ * cb; int /*<<< orphan*/  retransmit; } ;
struct TYPE_4__ {int /*<<< orphan*/  iv_index; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_ADDR_UNASSIGNED ; 
 int /*<<< orphan*/  BLE_MESH_IVU_PENDING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ bt_mesh ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct seg_tx *tx)
{
    int i;

    FUNC4(&tx->retransmit);

    tx->cb = NULL;
    tx->cb_data = NULL;
    tx->seq_auth = 0U;
    tx->sub = NULL;
    tx->dst = BLE_MESH_ADDR_UNASSIGNED;

    if (!tx->nack_count) {
        return;
    }

    for (i = 0; i <= tx->seg_n; i++) {
        if (!tx->seg[i]) {
            continue;
        }

        /** Change by Espressif. Add this to avoid buf->ref is 2 which will
         *  cause lack of buf.
         */
        if (tx->seg[i]->ref > 1) {
            tx->seg[i]->ref = 1;
        }
        FUNC5(tx->seg[i]);
        tx->seg[i] = NULL;
    }

    tx->nack_count = 0U;

    if (FUNC1(bt_mesh.flags, BLE_MESH_IVU_PENDING)) {
        FUNC0("Proceding with pending IV Update");
        /* bt_mesh_net_iv_update() will re-enable the flag if this
         * wasn't the only transfer.
         */
        if (FUNC2(bt_mesh.iv_index, false)) {
            FUNC3(NULL);
        }
    }
}