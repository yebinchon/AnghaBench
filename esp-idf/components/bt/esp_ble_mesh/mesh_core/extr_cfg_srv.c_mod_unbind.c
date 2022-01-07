
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct bt_mesh_model {scalar_t__* keys; TYPE_1__* pub; } ;
struct TYPE_2__ {scalar_t__ key; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int BLE_MESH_ADDR_UNASSIGNED ;
 scalar_t__ BLE_MESH_KEY_UNUSED ;
 int BT_DBG (char*,struct bt_mesh_model*,scalar_t__,int) ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 int STATUS_INVALID_APPKEY ;
 int STATUS_SUCCESS ;
 int _mod_pub_set (struct bt_mesh_model*,int ,int ,int ,int ,int ,int ,int) ;
 int app_key_is_valid (scalar_t__) ;
 int bt_mesh_store_mod_bind (struct bt_mesh_model*) ;

__attribute__((used)) static u8_t mod_unbind(struct bt_mesh_model *model, u16_t key_idx, bool store)
{
    int i;

    BT_DBG("model %p key_idx 0x%03x store %u", model, key_idx, store);

    if (!app_key_is_valid(key_idx)) {
        return STATUS_INVALID_APPKEY;
    }

    for (i = 0; i < ARRAY_SIZE(model->keys); i++) {
        if (model->keys[i] != key_idx) {
            continue;
        }

        model->keys[i] = BLE_MESH_KEY_UNUSED;

        if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS) && store) {
            bt_mesh_store_mod_bind(model);
        }

        if (model->pub && model->pub->key == key_idx) {
            _mod_pub_set(model, BLE_MESH_ADDR_UNASSIGNED,
                         0, 0, 0, 0, 0, store);
        }
    }

    return STATUS_SUCCESS;
}
