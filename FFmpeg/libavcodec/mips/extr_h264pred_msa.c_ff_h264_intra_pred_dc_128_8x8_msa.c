
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2i64 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;


 int SD4 (int ,int ,int ,int ,int *,int) ;
 int __msa_copy_u_d (int ,int ) ;
 scalar_t__ __msa_fill_b (int) ;

void ff_h264_intra_pred_dc_128_8x8_msa(uint8_t *src, ptrdiff_t stride)
{
    uint64_t out;
    v16u8 store;

    store = (v16u8) __msa_fill_b(128);
    out = __msa_copy_u_d((v2i64) store, 0);

    SD4(out, out, out, out, src, stride);
    src += (4 * stride);
    SD4(out, out, out, out, src, stride);
}
