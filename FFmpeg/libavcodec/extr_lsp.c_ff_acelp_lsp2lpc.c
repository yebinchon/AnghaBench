
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int MAX_LP_HALF_ORDER ;
 int lsp2poly (int*,int const*,int) ;

void ff_acelp_lsp2lpc(int16_t* lp, const int16_t* lsp, int lp_half_order)
{
    int i;
    int f1[MAX_LP_HALF_ORDER+1];
    int f2[MAX_LP_HALF_ORDER+1];

    lsp2poly(f1, lsp , lp_half_order);
    lsp2poly(f2, lsp+1, lp_half_order);


    lp[0] = 4096;
    for(i=1; i<lp_half_order+1; i++)
    {
        int ff1 = f1[i] + f1[i-1];
        int ff2 = f2[i] - f2[i-1];

        ff1 += 1 << 10;
        lp[i] = (ff1 + ff2) >> 11;
        lp[(lp_half_order << 1) + 1 - i] = (ff1 - ff2) >> 11;
    }
}
