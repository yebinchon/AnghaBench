
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;


 int LD_UB4 (int *,int,int ,int ,int ,int ) ;
 int ST_UB4 (int ,int ,int ,int ,int *,int) ;
 int copy_16multx8mult_msa (int *,int,int *,int,int,int) ;

void ff_put_vp8_pixels16_msa(uint8_t *dst, ptrdiff_t dst_stride,
                            uint8_t *src, ptrdiff_t src_stride,
                            int height, int mx, int my)
{
    int32_t cnt;
    v16u8 src0, src1, src2, src3;

    if (0 == height % 8) {
        copy_16multx8mult_msa(src, src_stride, dst, dst_stride, height, 16);
    } else if (0 == height % 4) {
        for (cnt = (height >> 2); cnt--;) {
            LD_UB4(src, src_stride, src0, src1, src2, src3);
            src += (4 * src_stride);

            ST_UB4(src0, src1, src2, src3, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    }
}
