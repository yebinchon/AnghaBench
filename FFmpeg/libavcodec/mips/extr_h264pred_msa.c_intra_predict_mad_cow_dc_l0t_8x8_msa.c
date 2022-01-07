
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef scalar_t__ v4u32 ;
typedef int v4i32 ;
typedef int v16u8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int LD_UB (int*) ;
 int SD4 (int,int,int,int,int*,int) ;
 int __msa_copy_u_w (int ,int) ;
 int __msa_hadd_u_h (int ,int ) ;
 scalar_t__ __msa_hadd_u_w (int ,int ) ;

__attribute__((used)) static void intra_predict_mad_cow_dc_l0t_8x8_msa(uint8_t *src, int32_t stride)
{
    uint32_t src0, src1, src2;
    uint32_t out0, out1, out2;
    uint64_t store0, store1;
    v16u8 src_top;
    v8u16 add;
    v4u32 sum;

    src_top = LD_UB(src - stride);
    add = __msa_hadd_u_h(src_top, src_top);
    sum = __msa_hadd_u_w(add, add);
    src0 = __msa_copy_u_w((v4i32) sum, 0);
    src1 = __msa_copy_u_w((v4i32) sum, 1);

    src2 = src[0 * stride - 1];
    src2 += src[1 * stride - 1];
    src2 += src[2 * stride - 1];
    src2 += src[3 * stride - 1];
    src2 = (src0 + src2 + 4) >> 3;
    src0 = (src0 + 2) >> 2;
    src1 = (src1 + 2) >> 2;
    out0 = src0 * 0x01010101;
    out1 = src1 * 0x01010101;
    out2 = src2 * 0x01010101;
    store1 = ((uint64_t) out1 << 32);
    store0 = store1 | ((uint64_t) out2);
    store1 = store1 | ((uint64_t) out0);

    SD4(store0, store0, store0, store0, src, stride);
    src += (4 * stride);
    SD4(store1, store1, store1, store1, src, stride);
}
