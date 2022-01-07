
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_subnet {scalar_t__ net_idx; int * keys; } ;
struct bt_mesh_app_key {scalar_t__ net_idx; int updated; int * keys; } ;
struct TYPE_2__ {struct bt_mesh_app_key* app_keys; } ;


 int ARRAY_SIZE (struct bt_mesh_app_key*) ;
 int BT_DBG (char*,scalar_t__) ;
 TYPE_1__ bt_mesh ;
 int memcpy (int *,int *,int) ;

void bt_mesh_net_revoke_keys(struct bt_mesh_subnet *sub)
{
    int i;

    BT_DBG("idx 0x%04x", sub->net_idx);

    memcpy(&sub->keys[0], &sub->keys[1], sizeof(sub->keys[0]));

    for (i = 0; i < ARRAY_SIZE(bt_mesh.app_keys); i++) {
        struct bt_mesh_app_key *key = &bt_mesh.app_keys[i];

        if (key->net_idx != sub->net_idx || !key->updated) {
            continue;
        }

        memcpy(&key->keys[0], &key->keys[1], sizeof(key->keys[0]));
        key->updated = 0;
    }
}
