
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int LD_UB4 (int *,int,int ,int ,int ,int ) ;
 int ST_UB4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void copy_width64_msa(uint8_t *src, int32_t src_stride,
                             uint8_t *dst, int32_t dst_stride,
                             int32_t height)
{
    int32_t cnt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 src8, src9, src10, src11, src12, src13, src14, src15;

    for (cnt = (height >> 2); cnt--;) {
        LD_UB4(src, 16, src0, src1, src2, src3);
        src += src_stride;
        LD_UB4(src, 16, src4, src5, src6, src7);
        src += src_stride;
        LD_UB4(src, 16, src8, src9, src10, src11);
        src += src_stride;
        LD_UB4(src, 16, src12, src13, src14, src15);
        src += src_stride;

        ST_UB4(src0, src1, src2, src3, dst, 16);
        dst += dst_stride;
        ST_UB4(src4, src5, src6, src7, dst, 16);
        dst += dst_stride;
        ST_UB4(src8, src9, src10, src11, dst, 16);
        dst += dst_stride;
        ST_UB4(src12, src13, src14, src15, dst, 16);
        dst += dst_stride;
    }
}
