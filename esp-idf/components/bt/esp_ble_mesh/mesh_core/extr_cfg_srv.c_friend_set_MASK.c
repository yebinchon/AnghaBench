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
struct net_buf_simple {int* data; int /*<<< orphan*/  len; } ;
struct bt_mesh_msg_ctx {int /*<<< orphan*/  addr; int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; } ;
struct bt_mesh_model {struct bt_mesh_cfg_srv* user_data; } ;
struct TYPE_2__ {int feat; } ;
struct bt_mesh_cfg_srv {int frnd; TYPE_1__ hb_pub; } ;

/* Variables and functions */
 int BLE_MESH_FEAT_FRIEND ; 
 int BLE_MESH_FRIEND_DISABLED ; 
 int /*<<< orphan*/  BLE_MESH_KEY_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_FRIEND ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*) ; 

__attribute__((used)) static void FUNC8(struct bt_mesh_model *model,
                       struct bt_mesh_msg_ctx *ctx,
                       struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_srv *cfg = model->user_data;

    FUNC0("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           FUNC3(buf->data, buf->len));

    if (buf->data[0] != 0x00 && buf->data[0] != 0x01) {
        FUNC1("Invalid Friend value 0x%02x", buf->data[0]);
        return;
    }

    if (!cfg) {
        FUNC1("No Configuration Server context available");
        goto send_status;
    }

    FUNC0("Friend 0x%02x -> 0x%02x", cfg->frnd, buf->data[0]);

    if (cfg->frnd == buf->data[0]) {
        goto send_status;
    }

    if (FUNC2(CONFIG_BLE_MESH_FRIEND)) {
        cfg->frnd = buf->data[0];

        if (FUNC2(CONFIG_BLE_MESH_SETTINGS)) {
            FUNC6();
        }

        if (cfg->frnd == BLE_MESH_FRIEND_DISABLED) {
            FUNC4(BLE_MESH_KEY_ANY);
        }
    }

    if (cfg->hb_pub.feat & BLE_MESH_FEAT_FRIEND) {
        FUNC5();
    }

send_status:
    FUNC7(model, ctx);
}