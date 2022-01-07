
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int Point ;


 int ECC_CheckPointIsInElliCur_P256 (int *) ;
 int sys_memcpy_swap (int *,int const*,int) ;

bool bt_mesh_check_public_key(const u8_t key[64])
{
    struct p256_pub_key {
        u8_t x[32];
        u8_t y[32];
    } check = {0};

    sys_memcpy_swap(check.x, key, 32);
    sys_memcpy_swap(check.y, key + 32, 32);

    return ECC_CheckPointIsInElliCur_P256((Point *)&check);
}
