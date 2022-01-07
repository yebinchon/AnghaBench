
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bt_mesh_msg_ctx {int addr; } ;


 int EINVAL ;
 int OP_NET_TRANSMIT_SET ;
 int set_state_u8 (struct bt_mesh_msg_ctx*,int ,int ) ;

int bt_mesh_cfg_net_transmit_set(struct bt_mesh_msg_ctx *ctx, u8_t transmit)
{
    if (!ctx || !ctx->addr) {
        return -EINVAL;
    }
    return set_state_u8(ctx, OP_NET_TRANSMIT_SET, transmit);
}
