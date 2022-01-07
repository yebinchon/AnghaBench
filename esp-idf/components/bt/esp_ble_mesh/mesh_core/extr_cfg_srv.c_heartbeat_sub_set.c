
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct net_buf_simple {int dummy; } ;
struct bt_mesh_msg_ctx {int addr; } ;
struct bt_mesh_model {struct bt_mesh_cfg_srv* user_data; } ;
struct TYPE_2__ {unsigned int min_hops; unsigned int max_hops; unsigned int count; scalar_t__ expiry; scalar_t__ dst; scalar_t__ src; } ;
struct bt_mesh_cfg_srv {TYPE_1__ hb_sub; } ;
typedef int s32_t ;


 scalar_t__ BLE_MESH_ADDR_IS_RFU (scalar_t__) ;
 scalar_t__ BLE_MESH_ADDR_IS_UNICAST (scalar_t__) ;
 scalar_t__ BLE_MESH_ADDR_IS_VIRTUAL (scalar_t__) ;
 scalar_t__ BLE_MESH_ADDR_UNASSIGNED ;
 void* BLE_MESH_TTL_MAX ;
 int BT_DBG (char*,int,...) ;
 int BT_WARN (char*,...) ;
 int STATUS_SUCCESS ;
 scalar_t__ bt_mesh_primary_addr () ;
 int bt_mesh_set_hb_sub_dst (scalar_t__) ;
 unsigned int hb_pwr2 (int,int) ;
 int hb_sub_send_status (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,int ) ;
 scalar_t__ k_uptime_get () ;
 scalar_t__ net_buf_simple_pull_le16 (struct net_buf_simple*) ;
 int net_buf_simple_pull_u8 (struct net_buf_simple*) ;

__attribute__((used)) static void heartbeat_sub_set(struct bt_mesh_model *model,
                              struct bt_mesh_msg_ctx *ctx,
                              struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_srv *cfg = model->user_data;
    u16_t sub_src, sub_dst;
    u8_t sub_period;
    s32_t period_ms;

    BT_DBG("src 0x%04x", ctx->addr);

    sub_src = net_buf_simple_pull_le16(buf);
    sub_dst = net_buf_simple_pull_le16(buf);
    sub_period = net_buf_simple_pull_u8(buf);

    BT_DBG("sub_src 0x%04x sub_dst 0x%04x period 0x%02x",
           sub_src, sub_dst, sub_period);

    if (sub_src != BLE_MESH_ADDR_UNASSIGNED &&
            !BLE_MESH_ADDR_IS_UNICAST(sub_src)) {
        BT_WARN("Prohibited source address");
        return;
    }

    if (BLE_MESH_ADDR_IS_VIRTUAL(sub_dst) || BLE_MESH_ADDR_IS_RFU(sub_dst) ||
            (BLE_MESH_ADDR_IS_UNICAST(sub_dst) &&
             sub_dst != bt_mesh_primary_addr())) {
        BT_WARN("Prohibited destination address");
        return;
    }

    if (sub_period > 0x11) {
        BT_WARN("Prohibited subscription period 0x%02x", sub_period);
        return;
    }

    if (sub_src == BLE_MESH_ADDR_UNASSIGNED ||
            sub_dst == BLE_MESH_ADDR_UNASSIGNED ||
            sub_period == 0x00) {




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
        period_ms = hb_pwr2(sub_period, 1) * 1000U;
    }


    bt_mesh_set_hb_sub_dst(cfg->hb_sub.dst);

    BT_DBG("period_ms %u", period_ms);

    if (period_ms) {
        cfg->hb_sub.expiry = k_uptime_get() + period_ms;
    } else {
        cfg->hb_sub.expiry = 0;
    }

    hb_sub_send_status(model, ctx, STATUS_SUCCESS);




    if (!period_ms) {
        cfg->hb_sub.min_hops = 0U;
    }
}
