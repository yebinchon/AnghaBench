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
struct net_buf_simple {int len; int /*<<< orphan*/  data; } ;
struct bt_mesh_msg_ctx {int /*<<< orphan*/  addr; int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_cfg_mod_pub_status {int app_idx; int cred_flag; void* mod_id; void* cid; void* transmit; void* period; void* ttl; void* addr; void* elem_addr; void* status; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* CID_NVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct bt_mesh_cfg_mod_pub_status*,int) ; 
 void* FUNC5 (struct net_buf_simple*) ; 
 void* FUNC6 (struct net_buf_simple*) ; 

__attribute__((used)) static void FUNC7(struct bt_mesh_model *model,
                           struct bt_mesh_msg_ctx *ctx,
                           struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_mod_pub_status status = {0};

    FUNC2("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           FUNC3(buf->data, buf->len));

    status.status    = FUNC6(buf);
    status.elem_addr = FUNC5(buf);
    status.addr      = FUNC5(buf);
    status.app_idx   = FUNC5(buf);
    status.cred_flag = (status.app_idx & FUNC0(12));
    status.app_idx  &= FUNC1(12);
    status.ttl       = FUNC6(buf);
    status.period    = FUNC6(buf);
    status.transmit  = FUNC6(buf);
    if (buf->len >= 4) {
        status.cid = FUNC5(buf);
    } else {
        status.cid = CID_NVAL;
    }
    status.mod_id = FUNC5(buf);

    FUNC4(model, ctx, &status, sizeof(struct bt_mesh_cfg_mod_pub_status));
}