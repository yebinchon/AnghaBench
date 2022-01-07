
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int MAX_LP_ORDER ;
 int ff_acelp_lsp2lpc (int*,int const*,int) ;

void ff_acelp_lp_decode(int16_t* lp_1st, int16_t* lp_2nd, const int16_t* lsp_2nd, const int16_t* lsp_prev, int lp_order)
{
    int16_t lsp_1st[MAX_LP_ORDER];
    int i;


    for(i=0; i<lp_order; i++)



        lsp_1st[i] = (lsp_2nd[i] + lsp_prev[i]) >> 1;


    ff_acelp_lsp2lpc(lp_1st, lsp_1st, lp_order >> 1);


    ff_acelp_lsp2lpc(lp_2nd, lsp_2nd, lp_order >> 1);
}
