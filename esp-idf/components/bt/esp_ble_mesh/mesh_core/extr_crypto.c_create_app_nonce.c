
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 int sys_put_be16 (int ,int*) ;
 int sys_put_be32 (int,int*) ;

__attribute__((used)) static void create_app_nonce(u8_t nonce[13], bool dev_key, u8_t aszmic,
                             u16_t src, u16_t dst, u32_t seq_num,
                             u32_t iv_index)
{
    if (dev_key) {
        nonce[0] = 0x02;
    } else {
        nonce[0] = 0x01;
    }

    sys_put_be32((seq_num | ((u32_t)aszmic << 31)), &nonce[1]);

    sys_put_be16(src, &nonce[5]);
    sys_put_be16(dst, &nonce[7]);

    sys_put_be32(iv_index, &nonce[9]);
}
