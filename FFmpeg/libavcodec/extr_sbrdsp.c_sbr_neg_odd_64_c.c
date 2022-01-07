
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union av_intfloat32 {unsigned int i; } ;



__attribute__((used)) static void sbr_neg_odd_64_c(float *x)
{
    union av_intfloat32 *xi = (union av_intfloat32*) x;
    int i;
    for (i = 1; i < 64; i += 4) {
        xi[i + 0].i ^= 1U << 31;
        xi[i + 2].i ^= 1U << 31;
    }
}
