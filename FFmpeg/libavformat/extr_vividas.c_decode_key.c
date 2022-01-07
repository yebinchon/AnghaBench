
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 unsigned int* keybits ;

__attribute__((used)) static uint32_t decode_key(uint8_t *buf)
{
    uint32_t key = 0;

    for (int i = 0; i < 32; i++) {
        unsigned p = keybits[i];
        key |= ((buf[p] >> ((i*5+3)&7)) & 1u) << i;
    }

    return key;
}
