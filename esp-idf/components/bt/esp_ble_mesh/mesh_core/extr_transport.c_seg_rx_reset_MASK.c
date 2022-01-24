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
struct seg_rx {scalar_t__ block; unsigned int seq_auth; unsigned int in_use; void* dst; void* src; int /*<<< orphan*/ * sub; int /*<<< orphan*/  seg_n; scalar_t__ obo; int /*<<< orphan*/  ack; } ;

/* Variables and functions */
 void* BLE_MESH_ADDR_UNASSIGNED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct seg_rx*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_FRIEND ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,void*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct seg_rx *rx, bool full_reset)
{
    FUNC1("rx %p", rx);

    FUNC5(&rx->ack);

    if (FUNC3(CONFIG_BLE_MESH_FRIEND) && rx->obo &&
            rx->block != FUNC0(rx->seg_n)) {
        FUNC2("Clearing incomplete buffers from Friend queue");
        FUNC4(rx->sub, rx->src, rx->dst,
                                        &rx->seq_auth);
    }

    rx->in_use = 0U;

    /* We don't always reset these values since we need to be able to
     * send an ack if we receive a segment after we've already received
     * the full SDU.
     */
    if (full_reset) {
        rx->seq_auth = 0U;
        rx->sub = NULL;
        rx->src = BLE_MESH_ADDR_UNASSIGNED;
        rx->dst = BLE_MESH_ADDR_UNASSIGNED;
    }
}