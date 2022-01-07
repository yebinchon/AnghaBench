
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDWTELEM ;


 int W_CM ;
 int W_CO ;
 int W_CS ;

__attribute__((used)) static void vertical_compose97iH1(IDWTELEM *b0, IDWTELEM *b1, IDWTELEM *b2,
                                  int width)
{
    int i;

    for (i = 0; i < width; i++)
        b1[i] -= (W_CM * (b0[i] + b2[i]) + W_CO) >> W_CS;
}
