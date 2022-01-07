
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int v16u8 ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ILVR_B4_UB (TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,int ,int ,int ,int ) ;
 int LD_UB4 (int const*,int,int ,int ,int ,int ) ;
 int ST_UB4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void copy_8bit_to_16bit_width8_msa(const uint8_t *src, int32_t src_stride,
                                          int16_t *dst, int32_t dst_stride,
                                          int32_t height)
{
    uint8_t *dst_ptr;
    int32_t cnt;
    v16u8 src0, src1, src2, src3;
    v16i8 zero = { 0 };

    dst_ptr = (uint8_t *) dst;

    for (cnt = (height >> 2); cnt--;) {
        LD_UB4(src, src_stride, src0, src1, src2, src3);
        src += (4 * src_stride);

        ILVR_B4_UB(zero, src0, zero, src1, zero, src2, zero, src3,
                   src0, src1, src2, src3);

        ST_UB4(src0, src1, src2, src3, dst_ptr, (dst_stride * 2));
        dst_ptr += (4 * 2 * dst_stride);
    }
}
