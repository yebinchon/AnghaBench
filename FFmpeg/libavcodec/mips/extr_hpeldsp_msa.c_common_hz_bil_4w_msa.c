
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int v4i32 ;
typedef scalar_t__ v16u8 ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int AVER_UB2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_UB2 (int const*,int,scalar_t__,scalar_t__) ;
 int SLDI_B2_UB (TYPE_1__,scalar_t__,TYPE_1__,scalar_t__,int,scalar_t__,scalar_t__) ;
 int SW (int ,int*) ;
 int __msa_copy_u_w (int ,int ) ;

__attribute__((used)) static void common_hz_bil_4w_msa(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 uint8_t height)
{
    uint8_t loop_cnt;
    uint32_t out0, out1;
    v16u8 src0, src1, src0_sld1, src1_sld1, res0, res1;
    v16i8 zeros = { 0 };

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        LD_UB2(src, src_stride, src0, src1);
        src += (2 * src_stride);

        SLDI_B2_UB(zeros, src0, zeros, src1, 1, src0_sld1, src1_sld1);
        AVER_UB2_UB(src0_sld1, src0, src1_sld1, src1, res0, res1);

        out0 = __msa_copy_u_w((v4i32) res0, 0);
        out1 = __msa_copy_u_w((v4i32) res1, 0);
        SW(out0, dst);
        dst += dst_stride;
        SW(out1, dst);
        dst += dst_stride;
    }
}
