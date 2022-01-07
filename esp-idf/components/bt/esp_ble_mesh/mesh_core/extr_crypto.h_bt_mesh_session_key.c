
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_k1 (int const*,int,int const*,char*,int *) ;

__attribute__((used)) static inline int bt_mesh_session_key(const u8_t dhkey[32],
                                      const u8_t prov_salt[16],
                                      u8_t session_key[16])
{
    return bt_mesh_k1(dhkey, 32, prov_salt, "prsk", session_key);
}
