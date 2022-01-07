
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int vp9_iadst16x16_colcol_addblk_msa (int *,int *,int ) ;

void ff_iadst_iadst_16x16_add_msa(uint8_t *dst, ptrdiff_t stride,
                                  int16_t *block, int eob)
{
    vp9_iadst16x16_colcol_addblk_msa(block, dst, stride);
}
