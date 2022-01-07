
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWTELEM ;


 int W_AM ;
 int W_AO ;
 int W_AS ;

__attribute__((used)) static void vertical_decompose97iH0(DWTELEM *b0, DWTELEM *b1, DWTELEM *b2,
                                    int width)
{
    int i;

    for (i = 0; i < width; i++)
        b1[i] -= (W_AM * (b0[i] + b2[i]) + W_AO) >> W_AS;
}
