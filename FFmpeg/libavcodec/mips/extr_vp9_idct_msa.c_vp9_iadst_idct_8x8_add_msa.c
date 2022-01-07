
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_74__ TYPE_1__ ;


struct TYPE_74__ {int member_0; } ;
typedef TYPE_1__ v8i16 ;
typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int LD_SH8 (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SRARI_H4_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int) ;
 int ST_SH8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int *,int) ;
 int TRANSPOSE8x8_SH_SH (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int VP9_ADDBLK_ST8x4_UB (int *,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int VP9_IADST8x8_1D (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int VP9_IDCT8x8_1D (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;

__attribute__((used)) static void vp9_iadst_idct_8x8_add_msa(int16_t *input, uint8_t *dst,
                                       int32_t dst_stride, int32_t eob)
{
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 zero = { 0 };


    LD_SH8(input, 8, in1, in6, in3, in4, in5, in2, in7, in0);
    ST_SH8(zero, zero, zero, zero, zero, zero, zero, zero, input, 8);

    VP9_IADST8x8_1D(in0, in1, in2, in3, in4, in5, in6, in7,
                    in0, in1, in2, in3, in4, in5, in6, in7);

    TRANSPOSE8x8_SH_SH(in0, in1, in2, in3, in4, in5, in6, in7,
                       in0, in1, in2, in3, in4, in5, in6, in7);

    VP9_IDCT8x8_1D(in0, in1, in2, in3, in4, in5, in6, in7,
                   in0, in1, in2, in3, in4, in5, in6, in7);

    SRARI_H4_SH(in0, in1, in2, in3, 5);
    SRARI_H4_SH(in4, in5, in6, in7, 5);

    VP9_ADDBLK_ST8x4_UB(dst, dst_stride, in0, in1, in2, in3);
    dst += (4 * dst_stride);
    VP9_ADDBLK_ST8x4_UB(dst, dst_stride, in4, in5, in6, in7);
}
