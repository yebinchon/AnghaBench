
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct bt_mesh_msg_ctx {int addr; } ;


 int EINVAL ;
 int OP_NODE_IDENTITY_GET ;
 int node_identity_op (int ,struct bt_mesh_msg_ctx*,int ,int) ;

int bt_mesh_cfg_node_identity_get(struct bt_mesh_msg_ctx *ctx, u16_t net_idx)
{
    if (!ctx || !ctx->addr) {
        return -EINVAL;
    }
    return node_identity_op(OP_NODE_IDENTITY_GET, ctx, net_idx, 0xFF);
}
