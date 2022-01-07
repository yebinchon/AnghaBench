
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_mbuf {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;


 int ESP_LOGI (int ,char*) ;
 int gen_onoff_status (struct bt_mesh_model*,struct bt_mesh_msg_ctx*) ;
 int tag ;

__attribute__((used)) static void gen_onoff_get(struct bt_mesh_model *model,
                          struct bt_mesh_msg_ctx *ctx,
                          struct os_mbuf *buf)
{
    ESP_LOGI(tag, "#mesh-onoff GET\n");

    gen_onoff_status(model, ctx);
}
