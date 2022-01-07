
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {int len; int data; } ;
struct bt_mesh_msg_ctx {int addr; int app_idx; int net_idx; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_cfg_key_refresh_status {void* phase; int net_idx; void* status; int member_0; } ;


 int BT_DBG (char*,int ,int ,int ,int ,int ) ;
 int bt_hex (int ,int ) ;
 int cfg_client_cancel (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct bt_mesh_cfg_key_refresh_status*,int) ;
 int net_buf_simple_pull_le16 (struct net_buf_simple*) ;
 void* net_buf_simple_pull_u8 (struct net_buf_simple*) ;

__attribute__((used)) static void kr_phase_status(struct bt_mesh_model *model,
                            struct bt_mesh_msg_ctx *ctx,
                            struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_key_refresh_status status = {0};

    BT_DBG("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           bt_hex(buf->data, buf->len));

    status.status = net_buf_simple_pull_u8(buf);
    status.net_idx = net_buf_simple_pull_le16(buf);
    status.phase = net_buf_simple_pull_u8(buf);

    cfg_client_cancel(model, ctx, &status, sizeof(struct bt_mesh_cfg_key_refresh_status));
}
