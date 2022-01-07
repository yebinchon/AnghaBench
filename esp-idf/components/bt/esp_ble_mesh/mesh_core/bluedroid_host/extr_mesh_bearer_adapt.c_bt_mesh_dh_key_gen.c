
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8_t ;
typedef int (* bt_mesh_dh_key_cb_t ) (int const*,int const) ;
struct TYPE_6__ {int const* x; int const* y; int member_0; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_2__ Point ;
typedef int DWORD ;
typedef int const* BT_OCTET32 ;


 int BT_DBG (char*,int ) ;
 size_t BT_OCTET32_LEN ;
 int ECC_PointMult (TYPE_2__*,TYPE_2__*,int *,int ) ;
 int KEY_LENGTH_DWORDS_P256 ;
 int bt_hex (int const*,int) ;
 int const* bt_mesh_private_key ;
 int memcpy (int const*,int const*,size_t) ;

int bt_mesh_dh_key_gen(const u8_t remote_pk[64], bt_mesh_dh_key_cb_t cb, const u8_t idx)
{
    BT_OCTET32 private_key = {0};
    Point peer_pub_key = {0};
    Point new_pub_key = {0};

    BT_DBG("private key = %s", bt_hex(bt_mesh_private_key, BT_OCTET32_LEN));

    memcpy(private_key, bt_mesh_private_key, BT_OCTET32_LEN);
    memcpy(peer_pub_key.x, remote_pk, BT_OCTET32_LEN);
    memcpy(peer_pub_key.y, &remote_pk[BT_OCTET32_LEN], BT_OCTET32_LEN);

    BT_DBG("remote public key x = %s", bt_hex(peer_pub_key.x, BT_OCTET32_LEN));
    BT_DBG("remote public key y = %s", bt_hex(peer_pub_key.y, BT_OCTET32_LEN));

    ECC_PointMult(&new_pub_key, &peer_pub_key, (DWORD *)private_key, KEY_LENGTH_DWORDS_P256);

    BT_DBG("new public key x = %s", bt_hex(new_pub_key.x, 32));
    BT_DBG("new public key y = %s", bt_hex(new_pub_key.y, 32));

    if (cb != ((void*)0)) {
        cb((const u8_t *)new_pub_key.x, idx);
    }

    return 0;
}
