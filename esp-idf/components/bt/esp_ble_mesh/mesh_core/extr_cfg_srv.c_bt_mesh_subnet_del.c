
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bt_mesh_subnet {scalar_t__ net_idx; } ;
struct bt_mesh_app_key {scalar_t__ net_idx; } ;
struct TYPE_7__ {struct bt_mesh_app_key* app_keys; } ;
struct TYPE_5__ {scalar_t__ net_idx; } ;
struct TYPE_6__ {TYPE_1__ hb_pub; } ;


 int ARRAY_SIZE (struct bt_mesh_app_key*) ;
 scalar_t__ BLE_MESH_KEY_UNUSED ;
 int BT_DBG (char*,scalar_t__,int) ;
 int CONFIG_BLE_MESH_FRIEND ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 TYPE_4__ bt_mesh ;
 int bt_mesh_app_key_del (struct bt_mesh_app_key*,int) ;
 int bt_mesh_clear_subnet (struct bt_mesh_subnet*) ;
 int bt_mesh_friend_clear_net_idx (scalar_t__) ;
 int bt_mesh_store_hb_pub () ;
 TYPE_2__* conf ;
 int hb_pub_disable (TYPE_2__*) ;
 int memset (struct bt_mesh_subnet*,int ,int) ;

void bt_mesh_subnet_del(struct bt_mesh_subnet *sub, bool store)
{
    int i;

    BT_DBG("NetIdx 0x%03x store %u", sub->net_idx, store);

    if (conf && conf->hb_pub.net_idx == sub->net_idx) {
        hb_pub_disable(conf);

        if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS) && store) {
            bt_mesh_store_hb_pub();
        }
    }


    for (i = 0; i < ARRAY_SIZE(bt_mesh.app_keys); i++) {
        struct bt_mesh_app_key *key = &bt_mesh.app_keys[i];

        if (key->net_idx == sub->net_idx) {
            bt_mesh_app_key_del(key, store);
        }
    }

    if (IS_ENABLED(CONFIG_BLE_MESH_FRIEND)) {
        bt_mesh_friend_clear_net_idx(sub->net_idx);
    }

    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS) && store) {
        bt_mesh_clear_subnet(sub);
    }

    (void)memset(sub, 0, sizeof(*sub));
    sub->net_idx = BLE_MESH_KEY_UNUSED;
}
