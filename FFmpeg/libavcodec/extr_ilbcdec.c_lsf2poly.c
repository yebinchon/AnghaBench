
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int int32_t ;
typedef int int16_t ;


 int LPC_FILTERORDER ;
 int get_lsp_poly (int*,unsigned int*) ;
 int lsf2lsp (int*,int*,int ) ;

__attribute__((used)) static void lsf2poly(int16_t *a, int16_t *lsf)
{
    int32_t f[2][6];
    int16_t lsp[10];
    int32_t tmp;
    int i;

    lsf2lsp(lsf, lsp, LPC_FILTERORDER);

    get_lsp_poly(&lsp[0], f[0]);
    get_lsp_poly(&lsp[1], f[1]);

    for (i = 5; i > 0; i--) {
        f[0][i] += (unsigned)f[0][i - 1];
        f[1][i] -= (unsigned)f[1][i - 1];
    }

    a[0] = 4096;
    for (i = 5; i > 0; i--) {
        tmp = f[0][6 - i] + (unsigned)f[1][6 - i] + 4096;
        a[6 - i] = tmp >> 13;

        tmp = f[0][6 - i] - (unsigned)f[1][6 - i] + 4096;
        a[5 + i] = tmp >> 13;
    }
}
