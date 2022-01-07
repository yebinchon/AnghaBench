
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct bt_mesh_msg_ctx {int addr; } ;


 int EINVAL ;
 int OP_MOD_SUB_ADD ;
 int mod_sub (int ,struct bt_mesh_msg_ctx*,int ,int ,int ,int ) ;

int bt_mesh_cfg_mod_sub_add(struct bt_mesh_msg_ctx *ctx, u16_t elem_addr,
                            u16_t sub_addr, u16_t mod_id, u16_t cid)
{
    if (!ctx || !ctx->addr) {
        return -EINVAL;
    }
    return mod_sub(OP_MOD_SUB_ADD, ctx, elem_addr, sub_addr, mod_id, cid);
}
