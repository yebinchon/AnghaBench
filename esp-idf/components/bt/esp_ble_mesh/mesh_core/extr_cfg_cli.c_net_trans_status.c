
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;


 int state_status_u8 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct net_buf_simple*) ;

__attribute__((used)) static void net_trans_status(struct bt_mesh_model *model,
                             struct bt_mesh_msg_ctx *ctx,
                             struct net_buf_simple *buf)
{
    state_status_u8(model, ctx, buf);
}
