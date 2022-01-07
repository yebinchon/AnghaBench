
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_aes_cmac_one (int const*,int const*,int,int *) ;

int bt_mesh_prov_conf_salt(const u8_t conf_inputs[145], u8_t salt[16])
{
    const u8_t conf_salt_key[16] = { 0 };

    return bt_mesh_aes_cmac_one(conf_salt_key, conf_inputs, 145, salt);
}
