
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unbind_data {int store; int app_idx; } ;
struct bt_mesh_app_key {int keys; int net_idx; int app_idx; } ;


 int BLE_MESH_KEY_UNUSED ;
 int BT_DBG (char*,int ,int) ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 int _mod_unbind ;
 int bt_mesh_clear_app_key (struct bt_mesh_app_key*) ;
 int bt_mesh_model_foreach (int ,struct unbind_data*) ;
 int memset (int ,int ,int) ;

void bt_mesh_app_key_del(struct bt_mesh_app_key *key, bool store)
{
    struct unbind_data data = { .app_idx = key->app_idx, .store = store };

    BT_DBG("AppIdx 0x%03x store %u", key->app_idx, store);

    bt_mesh_model_foreach(_mod_unbind, &data);

    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS) && store) {
        bt_mesh_clear_app_key(key);
    }

    key->net_idx = BLE_MESH_KEY_UNUSED;
    (void)memset(key->keys, 0, sizeof(key->keys));
}
