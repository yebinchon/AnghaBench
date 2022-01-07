
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8_t ;
typedef int (* bt_mesh_dh_key_cb_t ) (int const*,int const) ;


 int BT_DBG (char*,int ) ;
 int BT_OCTET32_LEN ;
 int ble_sm_alg_gen_dhkey (int *,int *,int ,int *) ;
 int bt_hex (int ,int ) ;
 int bt_mesh_private_key ;

int bt_mesh_dh_key_gen(const u8_t remote_pk[64], bt_mesh_dh_key_cb_t cb, const u8_t idx)
{
    uint8_t dhkey[32];

    BT_DBG("private key = %s", bt_hex(bt_mesh_private_key, BT_OCTET32_LEN));

    ble_sm_alg_gen_dhkey((uint8_t *)&remote_pk[0], (uint8_t *)&remote_pk[32], bt_mesh_private_key, dhkey);

    if (cb != ((void*)0)) {
        cb((const u8_t *)dhkey, idx);
    }
    return 0;
}
