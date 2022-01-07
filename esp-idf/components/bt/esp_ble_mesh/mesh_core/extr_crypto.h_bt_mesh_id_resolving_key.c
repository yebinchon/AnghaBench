
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_k1_str (int const*,int,char*,char*,int *) ;

__attribute__((used)) static inline int bt_mesh_id_resolving_key(const u8_t net_key[16],
        u8_t resolving_key[16])
{
    return bt_mesh_k1_str(net_key, 16, "smbt", "smbi", resolving_key);
}
