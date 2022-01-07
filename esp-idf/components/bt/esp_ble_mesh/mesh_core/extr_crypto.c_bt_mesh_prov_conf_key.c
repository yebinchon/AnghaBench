
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_k1 (int const*,int,int const*,char*,int *) ;

int bt_mesh_prov_conf_key(const u8_t dhkey[32], const u8_t conf_salt[16],
                          u8_t conf_key[16])
{
    return bt_mesh_k1(dhkey, 32, conf_salt, "prck", conf_key);
}
