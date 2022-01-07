
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 long long av_log2 (int) ;

__attribute__((used)) static uint32_t softfloat_mul(uint32_t x, uint64_t mantissa)
{
    uint64_t l = x * (mantissa & 0xffffffff);
    uint64_t h = x * (mantissa >> 32);
    h += l >> 32;
    l &= 0xffffffff;
    l += 1LL << av_log2(h >> 21);
    h += l >> 32;
    return h >> 20;
}
