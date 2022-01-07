
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int LD_UB (int *) ;
 int ST_UB8 (int ,int ,int ,int ,int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void intra_predict_vert_16x16_msa(uint8_t *src, uint8_t *dst,
                                         int32_t dst_stride)
{
    v16u8 out = LD_UB(src);

    ST_UB8(out, out, out, out, out, out, out, out, dst, dst_stride);
    dst += (8 * dst_stride);
    ST_UB8(out, out, out, out, out, out, out, out, dst, dst_stride);
}
