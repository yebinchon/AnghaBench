
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8_t ;
struct net_buf_simple {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;


 int BT_DBG (char*,unsigned int,char*) ;
 int bt_mesh_attention (struct bt_mesh_model*,unsigned int) ;
 unsigned int net_buf_simple_pull_u8 (struct net_buf_simple*) ;

__attribute__((used)) static void health_set_attention(struct bt_mesh_model *model,
                                 struct bt_mesh_msg_ctx *ctx,
                                 struct net_buf_simple *buf)
{
    u8_t time;

    time = net_buf_simple_pull_u8(buf);

    BT_DBG("%u second%s", time, (time == 1U) ? "" : "s");

    bt_mesh_attention(model, time);
}
