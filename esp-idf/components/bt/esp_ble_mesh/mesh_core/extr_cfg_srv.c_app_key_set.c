
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct bt_mesh_subnet {scalar_t__ kr_phase; } ;
struct bt_mesh_app_keys {int val; int id; } ;
struct bt_mesh_app_key {scalar_t__ net_idx; int updated; scalar_t__ app_idx; struct bt_mesh_app_keys* keys; } ;


 scalar_t__ BLE_MESH_KR_PHASE_1 ;
 int BT_DBG (char*,...) ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 int STATUS_CANNOT_UPDATE ;
 int STATUS_IDX_ALREADY_STORED ;
 int STATUS_INSUFF_RESOURCES ;
 int STATUS_INVALID_APPKEY ;
 int STATUS_INVALID_BINDING ;
 int STATUS_INVALID_NETKEY ;
 int STATUS_STORAGE_FAIL ;
 int STATUS_SUCCESS ;
 int bt_hex (int const*,int) ;
 scalar_t__ bt_mesh_app_id (int const*,int *) ;
 struct bt_mesh_app_key* bt_mesh_app_key_alloc (scalar_t__) ;
 struct bt_mesh_app_key* bt_mesh_app_key_find (scalar_t__) ;
 int bt_mesh_store_app_key (struct bt_mesh_app_key*) ;
 struct bt_mesh_subnet* bt_mesh_subnet_get (scalar_t__) ;
 scalar_t__ memcmp (int ,int const*,int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static u8_t app_key_set(u16_t net_idx, u16_t app_idx, const u8_t val[16],
                        bool update)
{
    struct bt_mesh_app_keys *keys;
    struct bt_mesh_app_key *key;
    struct bt_mesh_subnet *sub;

    BT_DBG("net_idx 0x%04x app_idx %04x update %u val %s",
           net_idx, app_idx, update, bt_hex(val, 16));

    sub = bt_mesh_subnet_get(net_idx);
    if (!sub) {
        return STATUS_INVALID_NETKEY;
    }

    key = bt_mesh_app_key_find(app_idx);
    if (update) {
        if (!key) {
            return STATUS_INVALID_APPKEY;
        }

        if (key->net_idx != net_idx) {
            return STATUS_INVALID_BINDING;
        }

        keys = &key->keys[1];






        if (sub->kr_phase != BLE_MESH_KR_PHASE_1) {
            return STATUS_CANNOT_UPDATE;
        }

        if (key->updated) {
            if (memcmp(keys->val, val, 16)) {
                return STATUS_CANNOT_UPDATE;
            } else {
                return STATUS_SUCCESS;
            }
        }

        key->updated = 1;
    } else {
        if (key) {
            if (key->net_idx == net_idx &&
                    !memcmp(key->keys[0].val, val, 16)) {
                return STATUS_SUCCESS;
            }

            if (key->net_idx == net_idx) {
                return STATUS_IDX_ALREADY_STORED;
            } else {
                return STATUS_INVALID_NETKEY;
            }
        }

        key = bt_mesh_app_key_alloc(app_idx);
        if (!key) {
            return STATUS_INSUFF_RESOURCES;
        }

        keys = &key->keys[0];
    }

    if (bt_mesh_app_id(val, &keys->id)) {
        if (update) {
            key->updated = 0;
        }

        return STATUS_STORAGE_FAIL;
    }

    BT_DBG("app_idx 0x%04x AID 0x%02x", app_idx, keys->id);

    key->net_idx = net_idx;
    key->app_idx = app_idx;
    memcpy(keys->val, val, 16);

    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS)) {
        BT_DBG("Storing AppKey persistently");
        bt_mesh_store_app_key(key);
    }

    return STATUS_SUCCESS;
}
