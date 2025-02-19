
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {int len; int data; } ;
struct bt_mesh_msg_ctx {int addr; int app_idx; int net_idx; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_cfg_mod_pub_status {int app_idx; int cred_flag; void* mod_id; void* cid; void* transmit; void* period; void* ttl; void* addr; void* elem_addr; void* status; int member_0; } ;


 int BIT (int) ;
 int BIT_MASK (int) ;
 int BT_DBG (char*,int ,int ,int ,int,int ) ;
 void* CID_NVAL ;
 int bt_hex (int ,int) ;
 int cfg_client_cancel (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct bt_mesh_cfg_mod_pub_status*,int) ;
 void* net_buf_simple_pull_le16 (struct net_buf_simple*) ;
 void* net_buf_simple_pull_u8 (struct net_buf_simple*) ;

__attribute__((used)) static void mod_pub_status(struct bt_mesh_model *model,
                           struct bt_mesh_msg_ctx *ctx,
                           struct net_buf_simple *buf)
{
    struct bt_mesh_cfg_mod_pub_status status = {0};

    BT_DBG("net_idx 0x%04x app_idx 0x%04x src 0x%04x len %u: %s",
           ctx->net_idx, ctx->app_idx, ctx->addr, buf->len,
           bt_hex(buf->data, buf->len));

    status.status = net_buf_simple_pull_u8(buf);
    status.elem_addr = net_buf_simple_pull_le16(buf);
    status.addr = net_buf_simple_pull_le16(buf);
    status.app_idx = net_buf_simple_pull_le16(buf);
    status.cred_flag = (status.app_idx & BIT(12));
    status.app_idx &= BIT_MASK(12);
    status.ttl = net_buf_simple_pull_u8(buf);
    status.period = net_buf_simple_pull_u8(buf);
    status.transmit = net_buf_simple_pull_u8(buf);
    if (buf->len >= 4) {
        status.cid = net_buf_simple_pull_le16(buf);
    } else {
        status.cid = CID_NVAL;
    }
    status.mod_id = net_buf_simple_pull_le16(buf);

    cfg_client_cancel(model, ctx, &status, sizeof(struct bt_mesh_cfg_mod_pub_status));
}
