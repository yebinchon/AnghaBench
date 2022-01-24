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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u64_t ;
struct seg_rx {int in_use; unsigned int block; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  ttl; int /*<<< orphan*/  hdr; int /*<<< orphan*/  seg_n; int /*<<< orphan*/  seq_auth; int /*<<< orphan*/  ctl; int /*<<< orphan*/  sub; int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_dst; int /*<<< orphan*/  addr; int /*<<< orphan*/  send_ttl; } ;
struct bt_mesh_net_rx {TYPE_1__ ctx; int /*<<< orphan*/  ctl; int /*<<< orphan*/  sub; } ;

/* Variables and functions */
 int FUNC0 (struct seg_rx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct seg_rx* seg_rx ; 

__attribute__((used)) static struct seg_rx *FUNC4(struct bt_mesh_net_rx *net_rx,
                                   const u8_t *hdr, const u64_t *seq_auth,
                                   u8_t seg_n)
{
    int i;

    for (i = 0; i < FUNC0(seg_rx); i++) {
        struct seg_rx *rx = &seg_rx[i];

        if (rx->in_use) {
            continue;
        }

        rx->in_use = 1U;
        FUNC3(&rx->buf);
        rx->sub = net_rx->sub;
        rx->ctl = net_rx->ctl;
        rx->seq_auth = *seq_auth;
        rx->seg_n = seg_n;
        rx->hdr = *hdr;
        rx->ttl = net_rx->ctx.send_ttl;
        rx->src = net_rx->ctx.addr;
        rx->dst = net_rx->ctx.recv_dst;
        rx->block = 0U;

        FUNC2("New RX context. Block Complete 0x%08x",
               FUNC1(seg_n));

        return rx;
    }

    return NULL;
}