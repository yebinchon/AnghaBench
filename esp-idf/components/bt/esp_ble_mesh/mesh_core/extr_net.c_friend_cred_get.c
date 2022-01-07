
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct bt_mesh_subnet {int dummy; } ;


 int ENOENT ;

int friend_cred_get(struct bt_mesh_subnet *sub, u16_t addr, u8_t *nid,
                    const u8_t **enc, const u8_t **priv)
{
    return -ENOENT;
}
