
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_subnet {int net_idx; } ;


 scalar_t__ BLE_MESH_GATT_PROXY_ENABLED ;
 int BLE_MESH_KEY_ANY ;
 int CONFIG_BLE_MESH_FRIEND ;
 int CONFIG_BLE_MESH_GATT_PROXY_SERVER ;
 scalar_t__ IS_ENABLED (int ) ;
 int bt_mesh_friend_sec_update (int ) ;
 scalar_t__ bt_mesh_gatt_proxy_get () ;
 int bt_mesh_proxy_beacon_send (struct bt_mesh_subnet*) ;

void bt_mesh_net_sec_update(struct bt_mesh_subnet *sub)
{
    if (IS_ENABLED(CONFIG_BLE_MESH_FRIEND)) {
        bt_mesh_friend_sec_update(sub ? sub->net_idx : BLE_MESH_KEY_ANY);
    }

    if (IS_ENABLED(CONFIG_BLE_MESH_GATT_PROXY_SERVER) &&
            bt_mesh_gatt_proxy_get() == BLE_MESH_GATT_PROXY_ENABLED) {



    }
}
