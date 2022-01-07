
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;


 int bt_mesh_aes_cmac_one (int *,int const*,int,int *) ;
 int bt_mesh_s1 (char*,int *) ;
 int sys_get_be16 (int *) ;

int bt_mesh_virtual_addr(const u8_t virtual_label[16], u16_t *addr)
{
    u8_t salt[16];
    u8_t tmp[16];
    int err;

    err = bt_mesh_s1("vtad", salt);
    if (err) {
        return err;
    }

    err = bt_mesh_aes_cmac_one(salt, virtual_label, 16, tmp);
    if (err) {
        return err;
    }

    *addr = (sys_get_be16(&tmp[14]) & 0x3fff) | 0x8000;

    return 0;
}
