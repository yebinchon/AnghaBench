
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;


 int LD (int *) ;
 int SD4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void intra_predict_vert_8x8_msa(uint8_t *src, uint8_t *dst,
                                       int32_t dst_stride)
{
    uint64_t out = LD(src);

    SD4(out, out, out, out, dst, dst_stride);
    dst += (4 * dst_stride);
    SD4(out, out, out, out, dst, dst_stride);
}
