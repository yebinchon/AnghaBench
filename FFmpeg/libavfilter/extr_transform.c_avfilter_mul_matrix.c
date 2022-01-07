
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void avfilter_mul_matrix(const float *m1, float scalar, float *result)
{
    int i;
    for (i = 0; i < 9; i++)
        result[i] = m1[i] * scalar;
}
