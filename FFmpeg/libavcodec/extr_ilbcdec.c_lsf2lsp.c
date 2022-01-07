
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 int FFMIN (int,int) ;
 int* cos_derivative_tbl ;
 int* cos_tbl ;

__attribute__((used)) static void lsf2lsp(int16_t *lsf, int16_t *lsp, int order)
{
    int16_t diff, freq;
    int32_t tmp;
    int i, k;

    for (i = 0; i < order; i++) {
        freq = (lsf[i] * 20861) >> 15;






        k = FFMIN(freq >> 8, 63);
        diff = freq & 0xFF;


        tmp = cos_derivative_tbl[k] * diff;
        lsp[i] = cos_tbl[k] + (tmp >> 12);
    }
}
