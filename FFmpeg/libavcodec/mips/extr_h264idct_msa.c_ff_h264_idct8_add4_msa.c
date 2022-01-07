
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int pixel ;
typedef int int32_t ;
typedef int int16_t ;
typedef scalar_t__ dctcoef ;


 int ff_h264_idct8_addblk_msa (int*,int *,int) ;
 int ff_h264_idct8_dc_addblk_msa (int*,int *,int) ;
 size_t* scan8 ;

void ff_h264_idct8_add4_msa(uint8_t *dst, const int32_t *blk_offset,
                            int16_t *block, int32_t dst_stride,
                            const uint8_t nzc[15 * 8])
{
    int32_t cnt;

    for (cnt = 0; cnt < 16; cnt += 4) {
        int32_t nnz = nzc[scan8[cnt]];

        if (nnz) {
            if (nnz == 1 && ((dctcoef *) block)[cnt * 16])
                ff_h264_idct8_dc_addblk_msa(dst + blk_offset[cnt],
                                            block + cnt * 16 * sizeof(pixel),
                                            dst_stride);
            else
                ff_h264_idct8_addblk_msa(dst + blk_offset[cnt],
                                         block + cnt * 16 * sizeof(pixel),
                                         dst_stride);
        }
    }
}
