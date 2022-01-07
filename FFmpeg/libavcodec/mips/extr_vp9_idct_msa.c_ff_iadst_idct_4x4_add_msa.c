
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int vp9_iadst_idct_4x4_add_msa (int *,int *,int ,int) ;

void ff_iadst_idct_4x4_add_msa(uint8_t *dst, ptrdiff_t stride,
                               int16_t *block, int eob)
{
    vp9_iadst_idct_4x4_add_msa(block, dst, stride, eob);
}
