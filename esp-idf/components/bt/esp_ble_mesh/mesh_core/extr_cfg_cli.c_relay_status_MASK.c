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
struct net_buf_simple {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct bt_mesh_msg_ctx {int /*<<< orphan*/  addr; int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_cfg_relay_status {void* retransmit; void* relay; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct bt_mesh_cfg_relay_status*,int) ; 
 void* FUNC3 (struct net_buf_simple*) ; 

__attribute__((used)) static void FUNC4(struct bt_mesh_model *model,
                         struct bt_mesh_msg_ctx *ctx,
                         struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_relay_status status = {0};

    FUNC0("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           FUNC1(buf->data, buf->len));

    status.relay      = FUNC3(buf);
    status.retransmit = FUNC3(buf);

    FUNC2(model, ctx, &status, sizeof(struct bt_mesh_cfg_relay_status));
}