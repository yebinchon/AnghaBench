
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 int sbc_analyze_simd (int const*,int *,int const*,int) ;

__attribute__((used)) static void sbc_analyze_8_simd(const int16_t *in, int32_t *out,
                               const int16_t *consts)
{
    sbc_analyze_simd(in, out, consts, 8);
}
