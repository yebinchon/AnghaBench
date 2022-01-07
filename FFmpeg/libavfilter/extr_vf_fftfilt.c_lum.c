
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double** rdft_vdata; int* rdft_vlen; } ;
typedef TYPE_1__ FFTFILTContext ;



__attribute__((used)) static inline double lum(void *priv, double x, double y, int plane)
{
    FFTFILTContext *s = priv;
    return s->rdft_vdata[plane][(int)x * s->rdft_vlen[plane] + (int)y];
}
