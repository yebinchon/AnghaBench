
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int av_log2 (int) ;

__attribute__((used)) static uint64_t softfloat_reciprocal(uint32_t denom)
{
    int shift = av_log2(denom - 1) + 1;
    uint64_t ret = (1ULL << 52) / denom;
    uint64_t err = (1ULL << 52) - ret * denom;
    ret <<= shift;
    err <<= shift;
    err += denom / 2;
    return ret + err / denom;
}
