
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP_FILTER_ORDER_16k ;
 double cosf (float const) ;

__attribute__((used)) static void lsf2lsp(const float *lsf, double *lsp)
{
    int i;

    for (i = 0; i < LP_FILTER_ORDER_16k; i++)
        lsp[i] = cosf(lsf[i]);
}
