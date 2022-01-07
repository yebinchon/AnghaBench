
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static void dss_sp_scale_vector(int32_t *vec, int bits, int size)
{
    int i;

    if (bits < 0)
        for (i = 0; i < size; i++)
            vec[i] = vec[i] >> -bits;
    else
        for (i = 0; i < size; i++)
            vec[i] = vec[i] * (1 << bits);
}
