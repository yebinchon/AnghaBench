
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct bt_mesh_msg_ctx {int addr; } ;


 int CID_NVAL ;
 int EINVAL ;
 int OP_SIG_MOD_APP_GET ;
 int mod_app_get (int ,struct bt_mesh_msg_ctx*,int ,int ,int ) ;

int bt_mesh_cfg_mod_app_get(struct bt_mesh_msg_ctx *ctx, u16_t elem_addr, u16_t mod_id)
{
    if (!ctx || !ctx->addr) {
        return -EINVAL;
    }
    return mod_app_get(OP_SIG_MOD_APP_GET, ctx, elem_addr, mod_id, CID_NVAL);
}
