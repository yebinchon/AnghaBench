
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8_t ;
typedef int u32_t ;
struct bt_mesh_subnet_keys {int const* net_id; int beacon; } ;


 int BT_WARN (char*,int ,int ) ;
 int bt_hex (int const*,int) ;
 int bt_mesh_beacon_auth (int ,int const,int const*,int ,int const*) ;
 scalar_t__ memcmp (int const*,int const*,int) ;

__attribute__((used)) static bool auth_match(struct bt_mesh_subnet_keys *keys,
                       const u8_t net_id[8], u8_t flags,
                       u32_t iv_index, const u8_t auth[8])
{
    u8_t net_auth[8];

    if (memcmp(net_id, keys->net_id, 8)) {
        return 0;
    }

    bt_mesh_beacon_auth(keys->beacon, flags, keys->net_id, iv_index,
                        net_auth);

    if (memcmp(auth, net_auth, 8)) {
        BT_WARN("Authentication Value %s != %s",
                bt_hex(auth, 8), bt_hex(net_auth, 8));
        return 0;
    }

    return 1;
}
