
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct net_buf_simple {int len; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_elem {int addr; } ;


 int BT_DBG (char*,int ,int ,...) ;
 struct bt_mesh_model* bt_mesh_model_find (struct bt_mesh_elem*,int ) ;
 struct bt_mesh_model* bt_mesh_model_find_vnd (struct bt_mesh_elem*,int ,int ) ;
 int net_buf_simple_pull_le16 (struct net_buf_simple*) ;

__attribute__((used)) static struct bt_mesh_model *get_model(struct bt_mesh_elem *elem,
                                       struct net_buf_simple *buf, bool *vnd)
{
    if (buf->len < 4) {
        u16_t id;

        id = net_buf_simple_pull_le16(buf);

        BT_DBG("ID 0x%04x addr 0x%04x", id, elem->addr);

        *vnd = 0;

        return bt_mesh_model_find(elem, id);
    } else {
        u16_t company, id;

        company = net_buf_simple_pull_le16(buf);
        id = net_buf_simple_pull_le16(buf);

        BT_DBG("Company 0x%04x ID 0x%04x addr 0x%04x", company, id,
               elem->addr);

        *vnd = 1;

        return bt_mesh_model_find_vnd(elem, company, id);
    }
}
