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
typedef  int u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct bt_mesh_msg_ctx {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OP_NODE_IDENTITY_SET ; 
 int FUNC0 (int /*<<< orphan*/ ,struct bt_mesh_msg_ctx*,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct bt_mesh_msg_ctx *ctx, u16_t net_idx, u8_t identity)
{
    if (!ctx || !ctx->addr || identity > 0x01) {
        return -EINVAL;
    }
    return FUNC0(OP_NODE_IDENTITY_SET, ctx, net_idx, identity);
}