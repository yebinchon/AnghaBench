
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int AVER_ST16x4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int*,int) ;
 int LD_UB8 (int const*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void common_hz_bil_16w_msa(const uint8_t *src, int32_t src_stride,
                                  uint8_t *dst, int32_t dst_stride,
                                  uint8_t height)
{
    uint8_t loop_cnt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 src8, src9, src10, src11, src12, src13, src14, src15;

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        LD_UB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
        LD_UB8((src + 1), src_stride,
               src8, src9, src10, src11, src12, src13, src14, src15);
        src += (8 * src_stride);

        AVER_ST16x4_UB(src0, src8, src1, src9, src2, src10, src3, src11,
                       dst, dst_stride);
        dst += (4 * dst_stride);

        AVER_ST16x4_UB(src4, src12, src5, src13, src6, src14, src7, src15,
                       dst, dst_stride);
        dst += (4 * dst_stride);
    }
}
