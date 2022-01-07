
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int vp9_iadst16_1d_columns_addblk_msa (int *,int *,int) ;
 int vp9_idct16_1d_columns_msa (int *,int *) ;

__attribute__((used)) static void vp9_idct_iadst_16x16_add_msa(int16_t *input, uint8_t *dst,
                                         int32_t dst_stride, int32_t eob)
{
    int32_t i;
    int16_t out[16 * 16];
    int16_t *out_ptr = &out[0];


    for (i = 0; i < 2; i++) {

        vp9_idct16_1d_columns_msa((input + (i << 3)), (out_ptr + (i << 7)));
    }


    for (i = 0; i < 2; i++) {

        vp9_iadst16_1d_columns_addblk_msa((out_ptr + (i << 3)),
                                          (dst + (i << 3)), dst_stride);
    }
}
