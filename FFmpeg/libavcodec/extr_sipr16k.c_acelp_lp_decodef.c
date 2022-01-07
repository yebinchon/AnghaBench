
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP_FILTER_ORDER_16k ;
 int ff_acelp_lspd2lpc (double const*,float*,int) ;

__attribute__((used)) static void acelp_lp_decodef(float *lp_1st, float *lp_2nd,
                             const double *lsp_2nd, const double *lsp_prev)
{
    double lsp_1st[LP_FILTER_ORDER_16k];
    int i;


    for (i = 0; i < LP_FILTER_ORDER_16k; i++)
        lsp_1st[i] = (lsp_2nd[i] + lsp_prev[i]) * 0.5;

    ff_acelp_lspd2lpc(lsp_1st, lp_1st, LP_FILTER_ORDER_16k >> 1);


    ff_acelp_lspd2lpc(lsp_2nd, lp_2nd, LP_FILTER_ORDER_16k >> 1);
}
