
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16_t ;
struct bt_mesh_app_key {scalar_t__ net_idx; } ;
struct TYPE_2__ {struct bt_mesh_app_key* app_keys; } ;


 int ARRAY_SIZE (struct bt_mesh_app_key*) ;
 scalar_t__ BLE_MESH_KEY_UNUSED ;
 TYPE_1__ bt_mesh ;

struct bt_mesh_app_key *bt_mesh_app_key_alloc(u16_t app_idx)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(bt_mesh.app_keys); i++) {
        struct bt_mesh_app_key *key = &bt_mesh.app_keys[i];

        if (key->net_idx == BLE_MESH_KEY_UNUSED) {
            return key;
        }
    }

    return ((void*)0);
}
