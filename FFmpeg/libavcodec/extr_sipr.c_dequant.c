
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (float*,float const* const,int) ;

__attribute__((used)) static void dequant(float *out, const int *idx, const float * const cbs[])
{
    int i;
    int stride = 2;
    int num_vec = 5;

    for (i = 0; i < num_vec; i++)
        memcpy(out + stride*i, cbs[i] + stride*idx[i], stride*sizeof(float));

}
