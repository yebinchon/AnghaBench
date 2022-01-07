
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8_t ;
typedef int id6 ;


 char BIT_MASK (int) ;
 int bt_mesh_aes_cmac_one (char*,char const*,int,char*) ;
 int bt_mesh_s1 (char*,char*) ;

int bt_mesh_k4(const u8_t n[16], u8_t out[1])
{
    u8_t id6[] = { 'i', 'd', '6', 0x01 };
    u8_t tmp[16];
    u8_t t[16];
    int err;

    err = bt_mesh_s1("smk4", tmp);
    if (err) {
        return err;
    }

    err = bt_mesh_aes_cmac_one(tmp, n, 16, t);
    if (err) {
        return err;
    }

    err = bt_mesh_aes_cmac_one(t, id6, sizeof(id6), tmp);
    if (err) {
        return err;
    }

    out[0] = tmp[15] & BIT_MASK(6);

    return 0;
}
