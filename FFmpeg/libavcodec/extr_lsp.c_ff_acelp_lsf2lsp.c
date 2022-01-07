
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int ff_cos (int const) ;

void ff_acelp_lsf2lsp(int16_t *lsp, const int16_t *lsf, int lp_order)
{
    int i;


    for(i=0; i<lp_order; i++)

        lsp[i] = ff_cos(lsf[i] * 20861 >> 15);
}
