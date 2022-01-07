
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_msg_ctx {int addr; } ;


 int EINVAL ;
 int OP_BEACON_GET ;
 int get_state_u8 (struct bt_mesh_msg_ctx*,int ) ;

int bt_mesh_cfg_beacon_get(struct bt_mesh_msg_ctx *ctx)
{
    if (!ctx || !ctx->addr) {
        return -EINVAL;
    }
    return get_state_u8(ctx, OP_BEACON_GET);
}
