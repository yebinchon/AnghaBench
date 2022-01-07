
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int const uint8_t ;
typedef int int32_t ;


 int AVER_UB4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int LD_UB4 (int const*,int,int ,int ,int ,int ) ;
 int LD_UB8 (int const*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ST_UB4 (int ,int ,int ,int ,int const*,int) ;
 int ST_UB8 (int ,int ,int ,int ,int ,int ,int ,int ,int const*,int) ;

__attribute__((used)) static void avg_width16_msa(const uint8_t *src, int32_t src_stride,
                            uint8_t *dst, int32_t dst_stride,
                            int32_t height)
{
    int32_t cnt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;

    if (0 == (height % 8)) {
        for (cnt = (height / 8); cnt--;) {
            LD_UB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
            src += (8 * src_stride);
            LD_UB8(dst, dst_stride, dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7);

            AVER_UB4_UB(src0, dst0, src1, dst1, src2, dst2, src3, dst3,
                        dst0, dst1, dst2, dst3);
            AVER_UB4_UB(src4, dst4, src5, dst5, src6, dst6, src7, dst7,
                        dst4, dst5, dst6, dst7);
            ST_UB8(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst, dst_stride);
            dst += (8 * dst_stride);
        }
    } else if (0 == (height % 4)) {
        for (cnt = (height / 4); cnt--;) {
            LD_UB4(src, src_stride, src0, src1, src2, src3);
            src += (4 * src_stride);
            LD_UB4(dst, dst_stride, dst0, dst1, dst2, dst3);

            AVER_UB4_UB(src0, dst0, src1, dst1, src2, dst2, src3, dst3,
                        dst0, dst1, dst2, dst3);
            ST_UB4(dst0, dst1, dst2, dst3, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    }
}
