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
struct net_buf_simple {int* data; int /*<<< orphan*/  len; } ;
struct bt_mesh_subnet {scalar_t__ net_idx; } ;
struct bt_mesh_msg_ctx {int /*<<< orphan*/  addr; int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; } ;
struct bt_mesh_model {struct bt_mesh_cfg_srv* user_data; } ;
struct TYPE_3__ {int feat; } ;
struct bt_mesh_cfg_srv {int gatt_proxy; TYPE_1__ hb_pub; } ;
struct TYPE_4__ {struct bt_mesh_subnet* sub; } ;

/* Variables and functions */
 int FUNC0 (struct bt_mesh_subnet*) ; 
 int BLE_MESH_FEAT_PROXY ; 
 int BLE_MESH_GATT_PROXY_DISABLED ; 
 scalar_t__ BLE_MESH_GATT_PROXY_NOT_SUPPORTED ; 
 scalar_t__ BLE_MESH_KEY_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_GATT_PROXY_SERVER ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 TYPE_2__ bt_mesh ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct bt_mesh_subnet*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*) ; 

__attribute__((used)) static void FUNC12(struct bt_mesh_model *model,
                           struct bt_mesh_msg_ctx *ctx,
                           struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_srv *cfg = model->user_data;

    FUNC1("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           FUNC4(buf->data, buf->len));

    if (buf->data[0] != 0x00 && buf->data[0] != 0x01) {
        FUNC2("Invalid GATT Proxy value 0x%02x", buf->data[0]);
        return;
    }

    if (!FUNC3(CONFIG_BLE_MESH_GATT_PROXY_SERVER) ||
            FUNC6() == BLE_MESH_GATT_PROXY_NOT_SUPPORTED) {
        goto send_status;
    }

    if (!cfg) {
        FUNC2("No Configuration Server context available");
        goto send_status;
    }

    FUNC1("GATT Proxy 0x%02x -> 0x%02x", cfg->gatt_proxy, buf->data[0]);

    if (cfg->gatt_proxy == buf->data[0]) {
        goto send_status;
    }

    cfg->gatt_proxy = buf->data[0];

    if (FUNC3(CONFIG_BLE_MESH_SETTINGS)) {
        FUNC10();
    }

#if CONFIG_BLE_MESH_NODE
    if (cfg->gatt_proxy == BLE_MESH_GATT_PROXY_DISABLED) {
        int i;

        /* Section 4.2.11.1: "When the GATT Proxy state is set to
         * 0x00, the Node Identity state for all subnets shall be set
         * to 0x00 and shall not be changed."
         */
        for (i = 0; i < ARRAY_SIZE(bt_mesh.sub); i++) {
            struct bt_mesh_subnet *sub = &bt_mesh.sub[i];

            if (sub->net_idx != BLE_MESH_KEY_UNUSED) {
                bt_mesh_proxy_identity_stop(sub);
            }
        }

        /* Section 4.2.11: "Upon transition from GATT Proxy state 0x01
         * to GATT Proxy state 0x00 the GATT Bearer Server shall
         * disconnect all GATT Bearer Clients.
         */
        bt_mesh_proxy_gatt_disconnect();
    }

    bt_mesh_adv_update();
#endif

    if (cfg->hb_pub.feat & BLE_MESH_FEAT_PROXY) {
        FUNC7();
    }

send_status:
    FUNC11(model, ctx);
}