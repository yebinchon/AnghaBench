
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8_t ;
typedef int id64 ;


 int bt_mesh_aes_cmac_one (char*,char const*,int,char*) ;
 int bt_mesh_s1 (char*,char*) ;
 int memcpy (char*,char*,int) ;

int bt_mesh_k3(const u8_t n[16], u8_t out[8])
{
    u8_t id64[] = { 'i', 'd', '6', '4', 0x01 };
    u8_t tmp[16];
    u8_t t[16];
    int err;

    err = bt_mesh_s1("smk3", tmp);
    if (err) {
        return err;
    }

    err = bt_mesh_aes_cmac_one(tmp, n, 16, t);
    if (err) {
        return err;
    }

    err = bt_mesh_aes_cmac_one(t, id64, sizeof(id64), tmp);
    if (err) {
        return err;
    }

    memcpy(out, tmp + 8, 8);

    return 0;
}
