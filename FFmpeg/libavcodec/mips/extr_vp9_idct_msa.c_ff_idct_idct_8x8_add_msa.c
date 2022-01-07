
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int vp9_idct8x8_12_colcol_addblk_msa (int *,int *,int ) ;
 int vp9_idct8x8_1_add_msa (int *,int *,int ) ;
 int vp9_idct8x8_colcol_addblk_msa (int *,int *,int ) ;

void ff_idct_idct_8x8_add_msa(uint8_t *dst, ptrdiff_t stride,
                              int16_t *block, int eob)
{
    if (eob == 1) {
        vp9_idct8x8_1_add_msa(block, dst, stride);
    }
    else if (eob <= 12) {
        vp9_idct8x8_12_colcol_addblk_msa(block, dst, stride);
    }
    else {
        vp9_idct8x8_colcol_addblk_msa(block, dst, stride);
    }
}
