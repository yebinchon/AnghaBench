
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8i16 ;
typedef int v2i64 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;
typedef int int16_t ;


 int CLIP_SH8_0_255 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SH8 (int const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PCKEV_B4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SD4 (int ,int ,int ,int ,int *,int) ;
 int __msa_copy_u_d (int ,int ) ;

__attribute__((used)) static void put_pixels_clamped_msa(const int16_t *block, uint8_t *pixels,
                                   int32_t stride)
{
    uint64_t in0_d, in1_d, in2_d, in3_d, in4_d, in5_d, in6_d, in7_d;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

    LD_SH8(block, 8, in0, in1, in2, in3, in4, in5, in6, in7);
    CLIP_SH8_0_255(in0, in1, in2, in3, in4, in5, in6, in7);
    PCKEV_B4_SH(in0, in0, in1, in1, in2, in2, in3, in3, in0, in1, in2, in3);
    PCKEV_B4_SH(in4, in4, in5, in5, in6, in6, in7, in7, in4, in5, in6, in7);

    in0_d = __msa_copy_u_d((v2i64) in0, 0);
    in1_d = __msa_copy_u_d((v2i64) in1, 0);
    in2_d = __msa_copy_u_d((v2i64) in2, 0);
    in3_d = __msa_copy_u_d((v2i64) in3, 0);
    in4_d = __msa_copy_u_d((v2i64) in4, 0);
    in5_d = __msa_copy_u_d((v2i64) in5, 0);
    in6_d = __msa_copy_u_d((v2i64) in6, 0);
    in7_d = __msa_copy_u_d((v2i64) in7, 0);
    SD4(in0_d, in1_d, in2_d, in3_d, pixels, stride);
    pixels += 4 * stride;
    SD4(in4_d, in5_d, in6_d, in7_d, pixels, stride);
}
