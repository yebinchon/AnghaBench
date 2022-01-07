
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDWTELEM ;


 int W_AM ;
 int W_AO ;
 int W_AS ;
 int W_BM ;
 int W_BO ;
 int W_BS ;
 int W_CM ;
 int W_CO ;
 int W_CS ;
 int W_DM ;
 int W_DO ;
 int W_DS ;

void ff_snow_vertical_compose97i(IDWTELEM *b0, IDWTELEM *b1, IDWTELEM *b2,
                                 IDWTELEM *b3, IDWTELEM *b4, IDWTELEM *b5,
                                 int width)
{
    int i;

    for (i = 0; i < width; i++) {
        b4[i] -= (W_DM * (b3[i] + b5[i]) + W_DO) >> W_DS;
        b3[i] -= (W_CM * (b2[i] + b4[i]) + W_CO) >> W_CS;
        b2[i] += (W_BM * (b1[i] + b3[i]) + 4 * b2[i] + W_BO) >> W_BS;
        b1[i] += (W_AM * (b0[i] + b2[i]) + W_AO) >> W_AS;
    }
}
