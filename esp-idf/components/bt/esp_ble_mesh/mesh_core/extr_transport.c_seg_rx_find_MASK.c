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
typedef  scalar_t__ u64_t ;
struct seg_rx {scalar_t__ src; scalar_t__ dst; scalar_t__ const seq_auth; scalar_t__ in_use; } ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ recv_dst; } ;
struct bt_mesh_net_rx {TYPE_1__ ctx; } ;

/* Variables and functions */
 int FUNC0 (struct seg_rx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 struct seg_rx* seg_rx ; 
 int /*<<< orphan*/  FUNC2 (struct seg_rx*,int) ; 

__attribute__((used)) static struct seg_rx *FUNC3(struct bt_mesh_net_rx *net_rx,
                                  const u64_t *seq_auth)
{
    int i;

    for (i = 0; i < FUNC0(seg_rx); i++) {
        struct seg_rx *rx = &seg_rx[i];

        if (rx->src != net_rx->ctx.addr ||
                rx->dst != net_rx->ctx.recv_dst) {
            continue;
        }

        /* Return newer RX context in addition to an exact match, so
         * the calling function can properly discard an old SeqAuth.
         * Note: in Zephyr v1.14.0, ">=" is used here which does not
         * seem to be a right operation, hence we still use the original
         * "==" here.
         */
        if (rx->seq_auth == *seq_auth) {
            return rx;
        }

        if (rx->in_use) {
            FUNC1("Duplicate SDU from src 0x%04x",
                    net_rx->ctx.addr);

            /* Clear out the old context since the sender
             * has apparently started sending a new SDU.
             */
            FUNC2(rx, true);

            /* Return non-match so caller can re-allocate */
            return NULL;
        }
    }

    return NULL;
}