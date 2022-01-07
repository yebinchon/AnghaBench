
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float SQRT_1_6 ;

__attribute__((used)) static void dither_highpass_filter(float *src, int len)
{
    int i;


    for (i = 0; i < len - 2; i++)
        src[i] = (-src[i] + 2 * src[i + 1] - src[i + 2]) * SQRT_1_6;
}
