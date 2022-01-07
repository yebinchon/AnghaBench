
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWTELEM ;


 int W_DM ;
 int W_DO ;
 int W_DS ;

__attribute__((used)) static void vertical_decompose97iL1(DWTELEM *b0, DWTELEM *b1, DWTELEM *b2,
                                    int width)
{
    int i;

    for (i = 0; i < width; i++)
        b1[i] += (W_DM * (b0[i] + b2[i]) + W_DO) >> W_DS;
}
