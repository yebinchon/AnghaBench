
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct bt_mesh_msg_ctx {int addr; } ;


 int EINVAL ;
 int OP_KRP_SET ;
 int kr_phase_op (int ,struct bt_mesh_msg_ctx*,int ,int) ;

int bt_mesh_cfg_kr_phase_set(struct bt_mesh_msg_ctx *ctx, u16_t net_idx, u8_t transition)
{
    if (!ctx || !ctx->addr || transition > 0x03) {
        return -EINVAL;
    }
    return kr_phase_op(OP_KRP_SET, ctx, net_idx, transition);;
}
