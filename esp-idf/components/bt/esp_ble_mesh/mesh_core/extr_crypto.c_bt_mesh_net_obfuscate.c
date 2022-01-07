
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;


 int BT_DBG (char*,int ,...) ;
 int bt_hex (int const*,int) ;
 int bt_mesh_encrypt_be (int const*,int*,int*) ;
 int memcpy (int*,int*,int) ;
 int sys_put_be32 (int ,int*) ;

int bt_mesh_net_obfuscate(u8_t *pdu, u32_t iv_index,
                          const u8_t privacy_key[16])
{
    u8_t priv_rand[16] = { 0x00, 0x00, 0x00, 0x00, 0x00, };
    u8_t tmp[16];
    int err, i;

    BT_DBG("IVIndex %u, PrivacyKey %s", iv_index, bt_hex(privacy_key, 16));

    sys_put_be32(iv_index, &priv_rand[5]);
    memcpy(&priv_rand[9], &pdu[7], 7);

    BT_DBG("PrivacyRandom %s", bt_hex(priv_rand, 16));

    err = bt_mesh_encrypt_be(privacy_key, priv_rand, tmp);
    if (err) {
        return err;
    }

    for (i = 0; i < 6; i++) {
        pdu[1 + i] ^= tmp[i];
    }

    return 0;
}
