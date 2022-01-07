
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_k1 (int const*,int,int *,char const*,int *) ;
 int bt_mesh_s1 (char const*,int *) ;

int bt_mesh_id128(const u8_t n[16], const char *s, u8_t out[16])
{
    const char *id128 = "id128\x01";
    u8_t salt[16];
    int err;

    err = bt_mesh_s1(s, salt);
    if (err) {
        return err;
    }

    return bt_mesh_k1(n, 16, salt, id128, out);
}
