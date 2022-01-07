
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_k4 (int const*,int *) ;

__attribute__((used)) static inline int bt_mesh_app_id(const u8_t app_key[16], u8_t app_id[1])
{
    return bt_mesh_k4(app_key, app_id);
}
