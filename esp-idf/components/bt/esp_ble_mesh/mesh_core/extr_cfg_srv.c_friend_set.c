
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_buf_simple {int* data; int len; } ;
struct bt_mesh_msg_ctx {int addr; int app_idx; int net_idx; } ;
struct bt_mesh_model {struct bt_mesh_cfg_srv* user_data; } ;
struct TYPE_2__ {int feat; } ;
struct bt_mesh_cfg_srv {int frnd; TYPE_1__ hb_pub; } ;


 int BLE_MESH_FEAT_FRIEND ;
 int BLE_MESH_FRIEND_DISABLED ;
 int BLE_MESH_KEY_ANY ;
 int BT_DBG (char*,int,int,...) ;
 int BT_WARN (char*,...) ;
 int CONFIG_BLE_MESH_FRIEND ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 int bt_hex (int*,int ) ;
 int bt_mesh_friend_clear_net_idx (int ) ;
 int bt_mesh_heartbeat_send () ;
 int bt_mesh_store_cfg () ;
 int send_friend_status (struct bt_mesh_model*,struct bt_mesh_msg_ctx*) ;

__attribute__((used)) static void friend_set(struct bt_mesh_model *model,
                       struct bt_mesh_msg_ctx *ctx,
                       struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_srv *cfg = model->user_data;

    BT_DBG("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           bt_hex(buf->data, buf->len));

    if (buf->data[0] != 0x00 && buf->data[0] != 0x01) {
        BT_WARN("Invalid Friend value 0x%02x", buf->data[0]);
        return;
    }

    if (!cfg) {
        BT_WARN("No Configuration Server context available");
        goto send_status;
    }

    BT_DBG("Friend 0x%02x -> 0x%02x", cfg->frnd, buf->data[0]);

    if (cfg->frnd == buf->data[0]) {
        goto send_status;
    }

    if (IS_ENABLED(CONFIG_BLE_MESH_FRIEND)) {
        cfg->frnd = buf->data[0];

        if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS)) {
            bt_mesh_store_cfg();
        }

        if (cfg->frnd == BLE_MESH_FRIEND_DISABLED) {
            bt_mesh_friend_clear_net_idx(BLE_MESH_KEY_ANY);
        }
    }

    if (cfg->hb_pub.feat & BLE_MESH_FEAT_FRIEND) {
        bt_mesh_heartbeat_send();
    }

send_status:
    send_friend_status(model, ctx);
}
