
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* ff_celt_hadamard_order ;
 int memcpy (float*,float*,int) ;

__attribute__((used)) static void celt_deinterleave_hadamard(float *tmp, float *X, int N0,
                                       int stride, int hadamard)
{
    int i, j, N = N0*stride;
    const uint8_t *order = &ff_celt_hadamard_order[hadamard ? stride - 2 : 30];

    for (i = 0; i < stride; i++)
        for (j = 0; j < N0; j++)
            tmp[order[i]*N0+j] = X[j*stride+i];

    memcpy(X, tmp, N*sizeof(float));
}
