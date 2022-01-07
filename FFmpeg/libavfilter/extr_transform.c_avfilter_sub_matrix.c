
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void avfilter_sub_matrix(const float *m1, const float *m2, float *result)
{
    int i;
    for (i = 0; i < 9; i++)
        result[i] = m1[i] - m2[i];
}
