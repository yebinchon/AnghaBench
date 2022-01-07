
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void celt_exp_rotation_impl(float *X, uint32_t len, uint32_t stride,
                                   float c, float s)
{
    float *Xptr;
    int i;

    Xptr = X;
    for (i = 0; i < len - stride; i++) {
        float x1 = Xptr[0];
        float x2 = Xptr[stride];
        Xptr[stride] = c * x2 + s * x1;
        *Xptr++ = c * x1 - s * x2;
    }

    Xptr = &X[len - 2 * stride - 1];
    for (i = len - 2 * stride - 1; i >= 0; i--) {
        float x1 = Xptr[0];
        float x2 = Xptr[stride];
        Xptr[stride] = c * x2 + s * x1;
        *Xptr-- = c * x1 - s * x2;
    }
}
