
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int LPC_FILTERORDER ;
 int lsf2poly (int *,int *) ;
 int lsf_interpolate (int *,int *,int *,int,int) ;

__attribute__((used)) static void lsp_interpolate2polydec(int16_t *a, int16_t *lsf1,
                                   int16_t *lsf2, int coef, int length)
{
    int16_t lsftmp[LPC_FILTERORDER];

    lsf_interpolate(lsftmp, lsf1, lsf2, coef, length);
    lsf2poly(a, lsftmp);
}
