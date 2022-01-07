
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float C_QUANT ;
 int FF_ARRAY_ELEMS (int*) ;
 int POW_SF2_ZERO ;
 int SCALE_DIV_512 ;
 int SCALE_ONE_POS ;
 int* aac_maxval_cb ;
 float* ff_aac_pow34sf_tab ;

__attribute__((used)) static inline int find_min_book(float maxval, int sf)
{
    float Q34 = ff_aac_pow34sf_tab[POW_SF2_ZERO - sf + SCALE_ONE_POS - SCALE_DIV_512];
    int qmaxval, cb;
    qmaxval = maxval * Q34 + C_QUANT;
    if (qmaxval >= (FF_ARRAY_ELEMS(aac_maxval_cb)))
        cb = 11;
    else
        cb = aac_maxval_cb[qmaxval];
    return cb;
}
