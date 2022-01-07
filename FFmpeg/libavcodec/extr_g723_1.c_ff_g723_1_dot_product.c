
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int av_sat_add32 (int,int) ;
 int ff_dot_product (int const*,int const*,int) ;

int ff_g723_1_dot_product(const int16_t *a, const int16_t *b, int length)
{
    int sum = ff_dot_product(a, b, length);
    return av_sat_add32(sum, sum);
}
