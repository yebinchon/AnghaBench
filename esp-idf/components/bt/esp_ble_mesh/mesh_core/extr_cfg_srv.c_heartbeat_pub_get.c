
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {int dummy; } ;
struct bt_mesh_msg_ctx {int addr; } ;
struct bt_mesh_model {int dummy; } ;


 int BT_DBG (char*,int ) ;
 int STATUS_SUCCESS ;
 int hb_pub_send_status (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,int ,int *) ;

__attribute__((used)) static void heartbeat_pub_get(struct bt_mesh_model *model,
                              struct bt_mesh_msg_ctx *ctx,
                              struct net_buf_simple *buf)
{
    BT_DBG("src 0x%04x", ctx->addr);

    hb_pub_send_status(model, ctx, STATUS_SUCCESS, ((void*)0));
}
