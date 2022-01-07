
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int im; int re; } ;
typedef int FFTSample ;
typedef TYPE_1__ FFTComplex ;


 int BF (int ,int ,int ,int ) ;
 int BUTTERFLIES (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int M_SQRT1_2 ;
 int TRANSFORM (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int ) ;
 int fft4 (TYPE_1__*) ;

__attribute__((used)) static void fft8(FFTComplex *z)
{
    FFTSample t1, t2, t3, t4, t5, t6;

    fft4(z);

    BF(t1, z[5].re, z[4].re, -z[5].re);
    BF(t2, z[5].im, z[4].im, -z[5].im);
    BF(t5, z[7].re, z[6].re, -z[7].re);
    BF(t6, z[7].im, z[6].im, -z[7].im);

    BUTTERFLIES(z[0],z[2],z[4],z[6]);
    TRANSFORM(z[1],z[3],z[5],z[7],M_SQRT1_2,M_SQRT1_2);
}
