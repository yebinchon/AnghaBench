
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_ccm_decrypt (int const*,int *,int const*,int,int *,int ,int *,int) ;

int bt_mesh_prov_decrypt(const u8_t key[16], u8_t nonce[13],
                         const u8_t data[25 + 8], u8_t out[25])
{
    return bt_mesh_ccm_decrypt(key, nonce, data, 25, ((void*)0), 0, out, 8);
}
