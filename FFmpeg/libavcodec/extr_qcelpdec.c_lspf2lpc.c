
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const M_PI ;
 double QCELP_BANDWIDTH_EXPANSION_COEFF ;
 double cos (float const) ;
 int ff_acelp_lspd2lpc (double*,float*,int) ;

__attribute__((used)) static void lspf2lpc(const float *lspf, float *lpc)
{
    double lsp[10];
    double bandwidth_expansion_coeff = QCELP_BANDWIDTH_EXPANSION_COEFF;
    int i;

    for (i = 0; i < 10; i++)
        lsp[i] = cos(M_PI * lspf[i]);

    ff_acelp_lspd2lpc(lsp, lpc, 5);

    for (i = 0; i < 10; i++) {
        lpc[i] *= bandwidth_expansion_coeff;
        bandwidth_expansion_coeff *= QCELP_BANDWIDTH_EXPANSION_COEFF;
    }
}
