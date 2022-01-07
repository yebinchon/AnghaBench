
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bt_mesh_sg {int member_1; int const* member_0; } ;


 int ARRAY_SIZE (struct bt_mesh_sg*) ;
 int bt_mesh_aes_cmac (int const*,struct bt_mesh_sg*,int ,int *) ;

__attribute__((used)) static inline int bt_mesh_prov_salt(const u8_t conf_salt[16],
                                    const u8_t prov_rand[16],
                                    const u8_t dev_rand[16],
                                    u8_t prov_salt[16])
{
    const u8_t prov_salt_key[16] = { 0 };
    struct bt_mesh_sg sg[] = {
        { conf_salt, 16 },
        { prov_rand, 16 },
        { dev_rand, 16 },
    };

    return bt_mesh_aes_cmac(prov_salt_key, sg, ARRAY_SIZE(sg), prov_salt);
}
