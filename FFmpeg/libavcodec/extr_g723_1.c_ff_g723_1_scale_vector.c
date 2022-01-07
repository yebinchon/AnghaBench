
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int FFABS (int const) ;
 int FFMAX (int,int ) ;
 int av_log2_16bit (int) ;

int ff_g723_1_scale_vector(int16_t *dst, const int16_t *vector, int length)
{
    int bits, max = 0;
    int i;

    for (i = 0; i < length; i++)
        max |= FFABS(vector[i]);

    bits= 14 - av_log2_16bit(max);
    bits= FFMAX(bits, 0);

    for (i = 0; i < length; i++)
        dst[i] = (vector[i] * (1 << bits)) >> 3;

    return bits - 3;
}
