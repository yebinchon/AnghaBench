
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {int len; int data; } ;
struct bt_mesh_msg_ctx {int addr; int app_idx; int net_idx; } ;
struct bt_mesh_model {int dummy; } ;


 int BT_DBG (char*,int ,int ,int ,int ,int ) ;
 int bt_hex (int ,int ) ;
 int cfg_client_cancel (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,int *,int ) ;

__attribute__((used)) static void node_reset_status(struct bt_mesh_model *model,
                              struct bt_mesh_msg_ctx *ctx,
                              struct net_buf_simple *buf)
{
    BT_DBG("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           bt_hex(buf->data, buf->len));

    cfg_client_cancel(model, ctx, ((void*)0), 0);
}
