
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16_t ;
struct bt_mesh_app_key {scalar_t__ net_idx; scalar_t__ app_idx; } ;
struct TYPE_2__ {struct bt_mesh_app_key* app_keys; } ;


 int ARRAY_SIZE (struct bt_mesh_app_key*) ;
 scalar_t__ BLE_MESH_KEY_UNUSED ;
 TYPE_1__ bt_mesh ;

__attribute__((used)) static bool app_key_is_valid(u16_t app_idx)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(bt_mesh.app_keys); i++) {
        struct bt_mesh_app_key *key = &bt_mesh.app_keys[i];

        if (key->net_idx != BLE_MESH_KEY_UNUSED &&
                key->app_idx == app_idx) {
            return 1;
        }
    }

    return 0;
}
