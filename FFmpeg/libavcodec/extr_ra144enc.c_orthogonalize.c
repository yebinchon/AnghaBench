
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLOCKSIZE ;

__attribute__((used)) static void orthogonalize(float *v, const float *u)
{
    int i;
    float num = 0, den = 0;

    for (i = 0; i < BLOCKSIZE; i++) {
        num += v[i] * u[i];
        den += u[i] * u[i];
    }
    num /= den;
    for (i = 0; i < BLOCKSIZE; i++)
        v[i] -= num * u[i];
}
