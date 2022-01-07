
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct net_buf_simple {int dummy; } ;
struct bt_mesh_model {int dummy; } ;


 int OP_MOD_APP_STATUS ;
 int bt_mesh_model_msg_init (struct net_buf_simple*,int ) ;
 int memcpy (int ,int *,int) ;
 int net_buf_simple_add (struct net_buf_simple*,int) ;
 int net_buf_simple_add_le16 (struct net_buf_simple*,int ) ;
 int net_buf_simple_add_u8 (struct net_buf_simple*,int ) ;

__attribute__((used)) static void create_mod_app_status(struct net_buf_simple *msg,
                                  struct bt_mesh_model *mod, bool vnd,
                                  u16_t elem_addr, u16_t app_idx,
                                  u8_t status, u8_t *mod_id)
{
    bt_mesh_model_msg_init(msg, OP_MOD_APP_STATUS);

    net_buf_simple_add_u8(msg, status);
    net_buf_simple_add_le16(msg, elem_addr);
    net_buf_simple_add_le16(msg, app_idx);

    if (vnd) {
        memcpy(net_buf_simple_add(msg, 4), mod_id, 4);
    } else {
        memcpy(net_buf_simple_add(msg, 2), mod_id, 2);
    }
}
