
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AV_RL32 (int const*) ;

__attribute__((used)) static void multiswap_init(const uint8_t keybuf[48], uint32_t keys[12])
{
    int i;
    for (i = 0; i < 12; i++)
        keys[i] = AV_RL32(keybuf + (i << 2)) | 1;
}
