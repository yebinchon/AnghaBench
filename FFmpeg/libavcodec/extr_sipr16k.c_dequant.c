
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (float*,float const* const,int) ;

__attribute__((used)) static void dequant(float *out, const int *idx, const float * const cbs[])
{
    int i;

    for (i = 0; i < 4; i++)
        memcpy(out + 3*i, cbs[i] + 3*idx[i], 3*sizeof(float));

    memcpy(out + 12, cbs[4] + 4*idx[4], 4*sizeof(float));
}
