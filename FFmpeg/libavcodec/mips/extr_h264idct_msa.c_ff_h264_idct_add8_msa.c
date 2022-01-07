
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int pixel ;
typedef int int32_t ;
typedef int int16_t ;
typedef scalar_t__ dctcoef ;


 int ff_h264_idct4x4_addblk_dc_msa (scalar_t__*,int *,int) ;
 int ff_h264_idct_add_msa (scalar_t__*,int *,int) ;
 size_t* scan8 ;

void ff_h264_idct_add8_msa(uint8_t **dst,
                           const int32_t *blk_offset,
                           int16_t *block, int32_t dst_stride,
                           const uint8_t nzc[15 * 8])
{
    int32_t i, j;

    for (j = 1; j < 3; j++) {
        for (i = (j * 16); i < (j * 16 + 4); i++) {
            if (nzc[scan8[i]])
                ff_h264_idct_add_msa(dst[j - 1] + blk_offset[i],
                                     block + i * 16 * sizeof(pixel),
                                     dst_stride);
            else if (((dctcoef *) block)[i * 16])
                ff_h264_idct4x4_addblk_dc_msa(dst[j - 1] + blk_offset[i],
                                              block + i * 16 * sizeof(pixel),
                                              dst_stride);
        }
    }
}
