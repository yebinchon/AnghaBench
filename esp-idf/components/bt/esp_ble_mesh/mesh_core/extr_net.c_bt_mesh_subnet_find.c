
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u32_t ;
struct bt_mesh_subnet {scalar_t__ net_idx; scalar_t__ kr_phase; int * keys; } ;
struct TYPE_2__ {struct bt_mesh_subnet* sub; } ;


 int ARRAY_SIZE (struct bt_mesh_subnet*) ;
 scalar_t__ BLE_MESH_KEY_UNUSED ;
 scalar_t__ BLE_MESH_KR_NORMAL ;
 scalar_t__ auth_match (int *,int const*,int ,int ,int const*) ;
 TYPE_1__ bt_mesh ;

struct bt_mesh_subnet *bt_mesh_subnet_find(const u8_t net_id[8], u8_t flags,
        u32_t iv_index, const u8_t auth[8],
        bool *new_key)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(bt_mesh.sub); i++) {
        struct bt_mesh_subnet *sub = &bt_mesh.sub[i];

        if (sub->net_idx == BLE_MESH_KEY_UNUSED) {
            continue;
        }

        if (auth_match(&sub->keys[0], net_id, flags, iv_index, auth)) {
            *new_key = 0;
            return sub;
        }

        if (sub->kr_phase == BLE_MESH_KR_NORMAL) {
            continue;
        }

        if (auth_match(&sub->keys[1], net_id, flags, iv_index, auth)) {
            *new_key = 1;
            return sub;
        }
    }

    return ((void*)0);
}
