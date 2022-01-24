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
typedef  int u8_t ;
typedef  scalar_t__ u16_t ;
struct net_buf_simple {int dummy; } ;
struct bt_mesh_msg_ctx {int addr; } ;
struct bt_mesh_model {struct bt_mesh_cfg_srv* user_data; } ;
struct TYPE_2__ {unsigned int min_hops; unsigned int max_hops; unsigned int count; scalar_t__ expiry; scalar_t__ dst; scalar_t__ src; } ;
struct bt_mesh_cfg_srv {TYPE_1__ hb_sub; } ;
typedef  int s32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ BLE_MESH_ADDR_UNASSIGNED ; 
 void* BLE_MESH_TTL_MAX ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 unsigned int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (struct net_buf_simple*) ; 
 int FUNC11 (struct net_buf_simple*) ; 

__attribute__((used)) static void FUNC12(struct bt_mesh_model *model,
                              struct bt_mesh_msg_ctx *ctx,
                              struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_srv *cfg = model->user_data;
    u16_t sub_src, sub_dst;
    u8_t sub_period;
    s32_t period_ms;

    FUNC3("src 0x%04x", ctx->addr);

    sub_src = FUNC10(buf);
    sub_dst = FUNC10(buf);
    sub_period = FUNC11(buf);

    FUNC3("sub_src 0x%04x sub_dst 0x%04x period 0x%02x",
           sub_src, sub_dst, sub_period);

    if (sub_src != BLE_MESH_ADDR_UNASSIGNED &&
            !FUNC1(sub_src)) {
        FUNC4("Prohibited source address");
        return;
    }

    if (FUNC2(sub_dst) || FUNC0(sub_dst) ||
            (FUNC1(sub_dst) &&
             sub_dst != FUNC5())) {
        FUNC4("Prohibited destination address");
        return;
    }

    if (sub_period > 0x11) {
        FUNC4("Prohibited subscription period 0x%02x", sub_period);
        return;
    }

    if (sub_src == BLE_MESH_ADDR_UNASSIGNED ||
            sub_dst == BLE_MESH_ADDR_UNASSIGNED ||
            sub_period == 0x00) {
        /* Only an explicit address change to unassigned should
         * trigger clearing of the values according to
         * MESH/NODE/CFG/HBS/BV-02-C.
         */
        if (sub_src == BLE_MESH_ADDR_UNASSIGNED ||
                sub_dst == BLE_MESH_ADDR_UNASSIGNED) {
            cfg->hb_sub.src = BLE_MESH_ADDR_UNASSIGNED;
            cfg->hb_sub.dst = BLE_MESH_ADDR_UNASSIGNED;
            cfg->hb_sub.min_hops = BLE_MESH_TTL_MAX;
            cfg->hb_sub.max_hops = 0U;
            cfg->hb_sub.count = 0U;
        }

        period_ms = 0;
    } else {
        cfg->hb_sub.src = sub_src;
        cfg->hb_sub.dst = sub_dst;
        cfg->hb_sub.min_hops = BLE_MESH_TTL_MAX;
        cfg->hb_sub.max_hops = 0U;
        cfg->hb_sub.count = 0U;
        period_ms = FUNC7(sub_period, 1) * 1000U;
    }

    /* Let the transport layer know it needs to handle this address */
    FUNC6(cfg->hb_sub.dst);

    FUNC3("period_ms %u", period_ms);

    if (period_ms) {
        cfg->hb_sub.expiry = FUNC9() + period_ms;
    } else {
        cfg->hb_sub.expiry = 0;
    }

    FUNC8(model, ctx, STATUS_SUCCESS);

    /* MESH/NODE/CFG/HBS/BV-01-C expects the MinHops to be 0x7f after
     * disabling subscription, but 0x00 for subsequent Get requests.
     */
    if (!period_ms) {
        cfg->hb_sub.min_hops = 0U;
    }
}