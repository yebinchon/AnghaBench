
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_private_key ;
 int memcpy (int ,int const*,int) ;

void bt_mesh_set_private_key(const u8_t pri_key[32])
{
    memcpy(bt_mesh_private_key, pri_key, 32);
}
