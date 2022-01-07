
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct net_buf_simple {int len; int data; } ;
struct bt_mesh_msg_ctx {int addr; int app_idx; int net_idx; } ;
struct bt_mesh_model {int dummy; } ;
typedef int bt_mesh_client_node_t ;


 int BT_DBG (char*,int ,int ,int ,...) ;
 int bt_hex (int ,int ) ;
 int * bt_mesh_is_client_recv_publish_msg (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct net_buf_simple*,int) ;
 int net_buf_simple_pull_le16 (struct net_buf_simple*) ;
 int net_buf_simple_pull_u8 (struct net_buf_simple*) ;

__attribute__((used)) static void health_current_status(struct bt_mesh_model *model,
                                  struct bt_mesh_msg_ctx *ctx,
                                  struct net_buf_simple *buf)
{
    bt_mesh_client_node_t *node = ((void*)0);
    u8_t test_id;
    u16_t cid;

    BT_DBG("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           bt_hex(buf->data, buf->len));


    if (!(node = bt_mesh_is_client_recv_publish_msg(model, ctx, buf, 1))) {
        return;
    }

    test_id = net_buf_simple_pull_u8(buf);
    cid = net_buf_simple_pull_le16(buf);

    BT_DBG("Test ID 0x%02x Company ID 0x%04x Fault Count %u",
           test_id, cid, buf->len);
}
