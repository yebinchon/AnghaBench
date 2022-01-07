
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct bt_mesh_msg_ctx {int addr; } ;


 int EINVAL ;
 int OP_MOD_SUB_VA_ADD ;
 int mod_sub_va (int ,struct bt_mesh_msg_ctx*,int ,int const*,int ,int ) ;

int bt_mesh_cfg_mod_sub_va_add(struct bt_mesh_msg_ctx *ctx, u16_t elem_addr,
                               const u8_t label[16], u16_t mod_id, u16_t cid)
{
    if (!ctx || !ctx->addr || !label) {
        return -EINVAL;
    }
    return mod_sub_va(OP_MOD_SUB_VA_ADD, ctx, elem_addr, label, mod_id, cid);
}
