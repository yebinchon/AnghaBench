
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int bt_mesh_k1 (int const*,int,int const*,char*,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline int bt_mesh_prov_nonce(const u8_t dhkey[32],
                                     const u8_t prov_salt[16],
                                     u8_t nonce[13])
{
    u8_t tmp[16];
    int err;

    err = bt_mesh_k1(dhkey, 32, prov_salt, "prsn", tmp);
    if (!err) {
        memcpy(nonce, tmp + 3, 13);
    }

    return err;
}
