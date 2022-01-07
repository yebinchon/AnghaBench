
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_mbuf {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;
typedef scalar_t__ int16_t ;


 int ESP_LOGI (int ,char*,scalar_t__) ;
 scalar_t__ gen_level_state ;
 int gen_level_status (struct bt_mesh_model*,struct bt_mesh_msg_ctx*) ;
 scalar_t__ net_buf_simple_pull_le16 (struct os_mbuf*) ;
 int tag ;

__attribute__((used)) static void gen_delta_set(struct bt_mesh_model *model,
                          struct bt_mesh_msg_ctx *ctx,
                          struct os_mbuf *buf)
{
    int16_t delta_level;

    delta_level = (int16_t) net_buf_simple_pull_le16(buf);
    ESP_LOGI(tag, "#mesh-level DELTA-SET: delta_level=%d\n", delta_level);

    gen_level_status(model, ctx);

    gen_level_state += delta_level;
    ESP_LOGI(tag, "#mesh-level: level=%d\n", gen_level_state);
}
