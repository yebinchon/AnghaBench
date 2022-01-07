
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_id128 (int const*,char*,int *) ;

__attribute__((used)) static inline int bt_mesh_identity_key(const u8_t net_key[16],
                                       u8_t identity_key[16])
{
    return bt_mesh_id128(net_key, "nkik", identity_key);
}
