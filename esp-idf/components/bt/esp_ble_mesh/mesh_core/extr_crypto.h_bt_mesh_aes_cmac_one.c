
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bt_mesh_sg {void const* member_0; size_t member_1; } ;


 int bt_mesh_aes_cmac (int const*,struct bt_mesh_sg*,int,int *) ;

__attribute__((used)) static inline int bt_mesh_aes_cmac_one(const u8_t key[16], const void *m,
                                       size_t len, u8_t mac[16])
{
    struct bt_mesh_sg sg = { m, len };

    return bt_mesh_aes_cmac(key, &sg, 1, mac);
}
