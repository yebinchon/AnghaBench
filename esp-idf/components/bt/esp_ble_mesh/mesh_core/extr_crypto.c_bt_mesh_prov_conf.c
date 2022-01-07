
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bt_mesh_sg {int member_1; int const* member_0; } ;


 int ARRAY_SIZE (struct bt_mesh_sg*) ;
 int BT_DBG (char*,int ) ;
 int bt_hex (int const*,int) ;
 int bt_mesh_aes_cmac (int const*,struct bt_mesh_sg*,int ,int *) ;

int bt_mesh_prov_conf(const u8_t conf_key[16], const u8_t rand[16],
                      const u8_t auth[16], u8_t conf[16])
{
    struct bt_mesh_sg sg[] = { { rand, 16 }, { auth, 16 } };

    BT_DBG("ConfirmationKey %s", bt_hex(conf_key, 16));
    BT_DBG("RandomDevice %s", bt_hex(rand, 16));
    BT_DBG("AuthValue %s", bt_hex(auth, 16));

    return bt_mesh_aes_cmac(conf_key, sg, ARRAY_SIZE(sg), conf);
}
