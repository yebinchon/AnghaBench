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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct net_buf_simple {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct bt_mesh_msg_ctx {int /*<<< orphan*/  addr; int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; } ;
struct bt_mesh_model {int dummy; } ;
typedef  int /*<<< orphan*/  bt_mesh_client_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct net_buf_simple*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_buf_simple*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_buf_simple*) ; 

__attribute__((used)) static void FUNC5(struct bt_mesh_model *model,
                                  struct bt_mesh_msg_ctx *ctx,
                                  struct net_buf_simple *buf)
{
    bt_mesh_client_node_t *node = NULL;
    u8_t test_id;
    u16_t cid;

    FUNC0("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           FUNC1(buf->data, buf->len));

    /* Health current status is a publish message, sent to the user directly. */
    if (!(node = FUNC2(model, ctx, buf, true))) {
        return;
    }

    test_id = FUNC4(buf);
    cid = FUNC3(buf);

    FUNC0("Test ID 0x%02x Company ID 0x%04x Fault Count %u",
           test_id, cid, buf->len);
}