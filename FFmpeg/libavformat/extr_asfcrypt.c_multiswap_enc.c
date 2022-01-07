
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int multiswap_step (int const*,int) ;

__attribute__((used)) static uint64_t multiswap_enc(const uint32_t keys[12],
                              uint64_t key, uint64_t data)
{
    uint32_t a = data;
    uint32_t b = data >> 32;
    uint32_t c;
    uint32_t tmp;
    a += key;
    tmp = multiswap_step(keys, a);
    b += tmp;
    c = (key >> 32) + tmp;
    tmp = multiswap_step(keys + 6, b);
    c += tmp;
    return ((uint64_t)c << 32) | tmp;
}
