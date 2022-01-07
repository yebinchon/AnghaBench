
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFTSample ;
typedef int FFTComplex ;


 int M_SQRT1_2 ;
 int TRANSFORM (int ,int ,int ,int ,int ,int ) ;
 int TRANSFORM_ZERO (int ,int ,int ,int ) ;
 int * TX_NAME (int ) ;
 int ff_cos_16 ;
 int fft4 (int *) ;
 int fft8 (int *) ;

__attribute__((used)) static void fft16(FFTComplex *z)
{
    FFTSample t1, t2, t3, t4, t5, t6;
    FFTSample cos_16_1 = TX_NAME(ff_cos_16)[1];
    FFTSample cos_16_3 = TX_NAME(ff_cos_16)[3];

    fft8(z);
    fft4(z+8);
    fft4(z+12);

    TRANSFORM_ZERO(z[0],z[4],z[8],z[12]);
    TRANSFORM(z[2],z[6],z[10],z[14],M_SQRT1_2,M_SQRT1_2);
    TRANSFORM(z[1],z[5],z[9],z[13],cos_16_1,cos_16_3);
    TRANSFORM(z[3],z[7],z[11],z[15],cos_16_3,cos_16_1);
}
