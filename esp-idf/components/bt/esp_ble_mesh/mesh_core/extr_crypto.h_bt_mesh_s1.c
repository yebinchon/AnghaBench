
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_aes_cmac_one (int const*,char const*,int ,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static inline bool bt_mesh_s1(const char *m, u8_t salt[16])
{
    const u8_t zero[16] = { 0 };

    return bt_mesh_aes_cmac_one(zero, m, strlen(m), salt);
}
