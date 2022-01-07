
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_PI ;
 double cos (double) ;

void ff_acelp_lsf2lspd(double *lsp, const float *lsf, int lp_order)
{
    int i;

    for(i = 0; i < lp_order; i++)
        lsp[i] = cos(2.0 * M_PI * lsf[i]);
}
