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
struct net_buf_simple {int dummy; } ;
struct bt_mesh_msg_ctx {int /*<<< orphan*/  addr; } ;
struct bt_mesh_model {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bt_mesh_model *model,
                              struct bt_mesh_msg_ctx *ctx,
                              struct net_buf_simple *buf)
{
    FUNC0("src 0x%04x", ctx->addr);

    FUNC1(model, ctx, STATUS_SUCCESS);
}