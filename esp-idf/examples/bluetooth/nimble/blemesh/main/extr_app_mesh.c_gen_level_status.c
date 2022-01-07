
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_mbuf {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;


 int BT_MESH_MODEL_OP_2 (int,int) ;
 int ESP_LOGI (int ,char*) ;
 struct os_mbuf* NET_BUF_SIMPLE (int) ;
 int bt_mesh_model_msg_init (struct os_mbuf*,int ) ;
 scalar_t__ bt_mesh_model_send (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct os_mbuf*,int *,int *) ;
 int gen_level_state ;
 int net_buf_simple_add_le16 (struct os_mbuf*,int ) ;
 int os_mbuf_free_chain (struct os_mbuf*) ;
 int tag ;

__attribute__((used)) static void gen_level_status(struct bt_mesh_model *model,
                             struct bt_mesh_msg_ctx *ctx)
{
    struct os_mbuf *msg = NET_BUF_SIMPLE(4);

    ESP_LOGI(tag, "#mesh-level STATUS\n");

    bt_mesh_model_msg_init(msg, BT_MESH_MODEL_OP_2(0x82, 0x08));
    net_buf_simple_add_le16(msg, gen_level_state);

    if (bt_mesh_model_send(model, ctx, msg, ((void*)0), ((void*)0))) {
        ESP_LOGI(tag, "#mesh-level STATUS: send status failed\n");
    }

    os_mbuf_free_chain(msg);
}
